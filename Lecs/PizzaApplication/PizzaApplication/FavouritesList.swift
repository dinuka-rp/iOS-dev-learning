//
//  FavouritesList.swift
//  PizzaApplication
//
//  Created by Dinuka Piyadigama on 2022-04-06.
//

import SwiftUI

struct FavouritesList: View {
    @FetchRequest(entity: Pizza.entity(), sortDescriptors: [], predicate: NSPredicate(format: "isFavourite = %d", true)) var favourites: FetchedResults<Pizza>
    
    var body: some View {
        NavigationView {
            VStack{
                List(favourites){
                    favourite in
                    NavigationLink{
        //                        Text(pizza.name)
                        PizzaDetailView(pizza: favourite)
                    } label:{
                        HStack{
                            Image(favourite.thumbnailName ?? "").resizable().frame(width: 100, height: 100)
                            Text(favourite.name ?? "")
                        }
                    }
                }.listStyle(PlainListStyle())
            }.navigationBarTitle("Favourites", displayMode: .inline)
        }
    }
}

struct FavouritesList_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesList()
    }
}
