//
//  NewPizzaView.swift
//  PizzaApplication
//
//  Created by Dinuka Piyadigama on 2022-03-30.
//

import SwiftUI

struct NewPizzaView: View {
    
    @Environment(\.presentationMode) var presentationMode // used to close the sheet
    
    @Environment(\.managedObjectContext) var context
    
    @State private var name = ""
    @State private var ingredients = ""
    @State private var imageName = ""
    @State private var thumbnailName = ""
    @State private var type = ""

    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationView {
            ZStack {
                Color.gray.opacity(0.2)
                VStack{
                    TextField("Enter Pizza Name", text: $name)
                        .textFieldStyle(.roundedBorder)
                    // text area = text editor
                    TextEditor(text: $ingredients).frame(height: 200)
                    TextField("Enter Image Name", text: $imageName)
                        .textFieldStyle(.roundedBorder)
                    TextField("Enter Pizza Thumbnail Name", text: $thumbnailName)
                        .textFieldStyle(.roundedBorder)
                    TextField("Enter Pizza Type", text: $type)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                }
//                .background(Color.red)
//                .padding(.horizontal, 30)
                .padding()
            }
            .navigationTitle("New Pizza")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem{
                    Button {
                        let pizza = Pizza(context: context)
                        pizza.name = name
                        pizza.ingredients = ingredients
                        pizza.imageName = imageName
                        pizza.thumbnailName = thumbnailName
                        pizza.type = type

                        try? context.save()
                        
                        print(pizza)
                        
                        presentationMode.wrappedValue.dismiss()
                    } label:{
                        Text("Save")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label:{
                        Text("Cancel")
                    }
                }
            }
        }
    }
}

struct NewPizzaView_Previews: PreviewProvider {
    static var previews: some View {
        NewPizzaView()
    }
}
