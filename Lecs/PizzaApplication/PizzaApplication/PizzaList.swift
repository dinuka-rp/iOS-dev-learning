//
//  PizzaList.swift
//  PizzaApplication
//
//  Created by Dinuka Piyadigama on 2022-03-30.
//

import SwiftUI

struct PizzaList: View {
    
//    @State var string = "Did Not press button"
//    var string1 = "Hello"
    
    @State private var selection = 0 // State var for the Segmented Picker
    @State private var isSheetShowing = false // State variable representing if the action sheet is open/ not
    
    let pizzaModel = PizzaModel()

//    let pizzas = [
//        Pizza(name: "Chicken Sizzler", imageName:"chicken_sizzler"),
//        Pizza(name: "Beef Sizzler", imageName: "beef_sizzler"),
//        Pizza(name: "Meat Feast", imageName: "meat_feast")
//    ]
    
    var body: some View {
//        Text("Hello, World!")
//        VStack(alignment: .center, spacing: 16) {
//            <#code#>
//        }
        
        NavigationView {
            VStack{
    //            Text(string)
    //            Text(string1)
    //            Button{
    //            string = "DID NOT PRESS BUTTON"
    ////            string1 = "Hello World"
    //            } label:{
    //                Text("Button")
    //            }
                
    //            Text("\(selection)").font(.system(size: 50))
                
                Picker("Pizzas", selection: $selection
    //                        .constant(1)
                ) {
                    Text("All🍕").tag(0)
                    Text("Meat🥩").tag(1)
                    Text("Veggie🥦").tag(2)
                }.pickerStyle(.segmented)
                
                List(pizzaModel.pizzas, id: \.name){
                    pizza in
                    NavigationLink{
//                        Text(pizza.name)
                        PizzaDetailView(pizza: pizza)
                    } label:{
                        HStack{
                            Image(pizza.imageName).resizable().frame(width: 100, height: 100)
                            Text(pizza.name)
        //                        .foregroundColor(<#Color?#>)
        //                        .backgroundColor()
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("Pizzas", displayMode: .inline)
            .sheet(isPresented: $isSheetShowing,
                   content:{
//                Text("Sheet")
                NewPizzaView()
            })
            .toolbar {
                ToolbarItem{
                    Button {
                        isSheetShowing.toggle()
                    } label:{
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct PizzaList_Previews: PreviewProvider {
    static var previews: some View {
        PizzaList()
    }
}
