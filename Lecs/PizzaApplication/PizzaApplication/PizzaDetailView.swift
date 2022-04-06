//
//  PizzaDetailView.swift
//  PizzaApplication
//
//  Created by Dinuka Piyadigama on 2022-03-30.
//

import SwiftUI

struct PizzaDetailView: View {
    
    @Environment(\.managedObjectContext) var context

    var pizza: Pizza
    // @Binding - allows the view to listen to this value & update the state?? check this later
    
    @State private var isFavourite: Bool
    
    init(pizza:Pizza) {
        self.pizza = pizza
        self.isFavourite = pizza.isFavourite
    }
    
    var body: some View {
        GeometryReader{reader in
            VStack (alignment:.leading) {
                Image(pizza.imageName ?? "")
                    .resizable()
                    .frame(width: reader.size.width, height:200)
                Text(pizza.name ?? "").padding()
                
                Button{
                    isFavourite.toggle()
                    pizza.isFavourite = isFavourite
                    try? context.save()
                    print(pizza)
                } label: {
                    Text(isFavourite ? "Unfavourite" : "Make Favourite")
                }
//                .disabled(pizza.isFavourite)
                .frame(maxWidth: .infinity)
            }
        }
    }
}

//struct PizzaDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PizzaDetailView(pizza: Pizza(name: "", ingredients: "", imageName: "", thumbnailName: "", type: .meat))
//    }
//}
