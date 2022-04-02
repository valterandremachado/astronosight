//
//  EventsView.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 3/21/22.
//

import SwiftUI

struct EventsView: View {
    let model = Story.getStoryies()
    @StateObject private var viewModel = StoryViewModel(service: UserService())
    
    init() {
//        UINavigationBar.appearance().backgroundColor = .red
    }
    
    var body: some View {
        // List/TableView
        NavigationView {
            List {
                // 1st section
                Section(header: StoryHeader(title: "Today").padding(.bottom, -10)) {
                    StoryView(users: viewModel.users)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .listRowSeparator(.hidden)
                }
                
                // 2nd section
                Section(header: EventHeader(title: "Upcoming Events").padding(.top, -20)) {
                    EventCardView(cards: viewModel.users)
                        .listRowSeparator(.hidden)
                }
                
            }
            .listSectionSeparator(.hidden)
            .onAppear(perform: {
                UITableView.appearance().contentInset.top = -35
                //                UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionFooterHeight = 0
                UITableView.appearance().backgroundColor = .clear
                
            })
            .listStyle(.grouped)
            .task {
                await viewModel.getUserDetails()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        .ignoresSafeArea()
    }
}


struct EventHeader: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.title3.uppercaseSmallCaps())
            Spacer()
            Button{
                    print("Do something")
            } label: {
                Text("Filter")
                    .font(.body.uppercaseSmallCaps())
            }
        }
        .frame(width: .infinity, height: 25)
    }
}

struct EventCardView: View {
    var cards: [User]
    
    var body: some View {
        ForEach(cards, id: \.id) { card in
            EventCardCell(card: card)
//                .padding([.top, .bottom], 10)
        }
    }
}

struct EventCardCell: View {
    
    let card: User
    
    var body: some View {
        ZStack {
            CustomAsyncImage(
               url: URL(string: card.avatar)!,
               placeholder: {
                 Image("1").frame(width: 40)
               },
               image: {
                   $0
                       .resizable()
                       .scaledToFill()
                       .frame(width: .infinity, height: 230)
                       .clipped()

               }
             )
            VStack {
                Spacer()
                HStack {
                    VStack (alignment: .leading) {
                        CountDownView(card: card)
                        Text("Meteor Shower: \(card.id)")
                            .foregroundColor(.white)
                        Text("Quadrantids: \(card.id)")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Spacer()
                        Button {
                            print("Button was tapped")
                        } label: {
                            Image(systemName: "bell")
                                .foregroundColor(.white)
                            Text("Remind Me")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding(.all, 15)
                .frame(maxWidth: .infinity, maxHeight: 120)
            }
        }
        .cornerRadius(10)
    }
}

struct CountDownView: View {
    let card: User
    
    var body: some View {
        HStack {
            VStack {
                Text("\(card.id)")
                    .bold()
                Text("hours")
            }
            Divider()
                .frame(height: 20)
                .background(.white)
            VStack {
                Text("\(card.id)")
                    .bold()
                Text("minutes")
            }
            Divider()
                .frame(height: 20)
                .background(.white)
            VStack {
                Text("\(card.id)")
                    .bold()
                Text("seconds")
            }
        }
        .foregroundColor(.white)
        
    }
}



struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}






