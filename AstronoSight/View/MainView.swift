//
//  ContentView.swift
//  AstronoSight
//
//  Created by Valter A. Machado on 3/21/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            EventsView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Events")
                }
            
            Text("Category Screen")
                 .tabItem {
                     Image(systemName: "house")
                     Text("Astros")
                 }
            
            Text("Settings Screen")
                 .tabItem {
                     Image(systemName: "gear")
                     Text("Settings")
                 }
        }
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
