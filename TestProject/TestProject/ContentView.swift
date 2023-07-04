//
//  ContentView.swift
//  TestProject
//
//  Created by Manisha on 04/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
           
            Applications()
                .tabItem{
                    Label("Applications",systemImage: "app")
                }
            Recents()
                .tabItem{
                    Label("Recents",systemImage: "clock")
                }
            Screen1()
                .tabItem{
                    Label("Settings",systemImage: "gear")
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


