//
//  ContentView.swift
//  PizzaApplication
//
//  Created by Dinuka Piyadigama on 2022-03-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        TabView {
            PizzaList()
                .tabItem {
//                    Text("Pizza List")
                    Label("Pizza List", systemImage: "list.dash")
                }
            Text("Favorites")
                .tabItem {
//                    Text("Favs")
                    Label("Favourites", systemImage: "star.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
