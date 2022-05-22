//
//  PizzaList.swift
//  PizzaApplication
//
//  Created by Dinuka Piyadigama on 2022-03-30.
//

import SwiftUI

struct PizzaList: View {
    
    @Environment(\.managedObjectContext) var context
    
    
    //    @State var string = "Did Not press button"
    //    var string1 = "Hello"
    
    @State private var pickerSelection = 0 // State var for the Segmented Picker
    @State private var isSheetShowing = false // State variable representing if the action sheet is open/ not
    @State private var filteredPizzas: [Pizza] = []
    
    @FetchRequest(entity: Pizza.entity(), sortDescriptors: []) var retrievedPizzas: FetchedResults<Pizza>
    
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
                
                Picker("Pizzas", selection: $pickerSelection
                       //                        .constant(1)
                ) {
                    Text("All🍕").tag(0)
                    Text("Meat🥩").tag(1)
                    Text("Veggie🥦").tag(2)
                }.pickerStyle(.segmented)
                
                List(filteredPizzas, id: \.name){
                    pizza in
                    NavigationLink{
                        //                        Text(pizza.name)
                        PizzaDetailView(pizza: pizza)
                    } label:{
                        HStack{
                            Image(pizza.thumbnailName ?? "").resizable().frame(width: 100, height: 100)
                            Text(pizza.name ?? "")
                            //                        .foregroundColor(<#Color?#>)
                            //                        .backgroundColor()
                        }
                    }
                    .swipeActions(edge: .trailing, allowsFullSwipe: false){
                        Button{
                            print("Deleting Item")
                            context.delete(pizza)
                            try? context.save()
                        } label:{
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .onChange(of: pickerSelection){_ in
                    switch pickerSelection{
                    case 0:
                        // filter all pizzas
                        filteredPizzas = retrievedPizzas.reversed() // Hacked around
                    case 1:
                        // filter meat type pizzas
                        filteredPizzas = retrievedPizzas.filter{$0.type == "meat"}
                    case 2:
                        // filter vegetarian type pizzas
                        filteredPizzas = retrievedPizzas.filter{$0.type == "vegetarian"}
                    default:
                        return
                    }
                }.onAppear{
                    // Hacked around
                    filteredPizzas = retrievedPizzas.reversed()
                }
                
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
