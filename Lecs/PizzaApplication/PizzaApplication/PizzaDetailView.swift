//
//  PizzaDetailView.swift
//  PizzaApplication
//
//  Created by Dinuka Piyadigama on 2022-03-30.
//

import SwiftUI

struct PizzaDetailView: View {
    
    let pizza: Pizza
    
    var body: some View {
        GeometryReader{reader in
            VStack (alignment:.leading) {
                Image("beef_sizzler")
                    .resizable()
                    .frame(width: reader.size.width, height:200)
                Text("Pizza").padding()
            }
        }
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaDetailView(pizza: Pizza(name: "", ingredients: "", imageName: "", thumbnailName: "", type: .meat))
    }
}
