//
//  NewPizzaView.swift
//  PizzaApplication
//
//  Created by Dinuka Piyadigama on 2022-03-30.
//

import SwiftUI

struct NewPizzaView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationView {
            ZStack {
                Color.gray.opacity(0.2)
                VStack{
                    TextField("Enter Pizza Name", text: .constant(""))
                        .textFieldStyle(.roundedBorder)
                    // text area = text editor
                    TextEditor(text: .constant("")).frame(height: 200)
                    TextField("Enter Image Name", text: .constant(""))
                        .textFieldStyle(.roundedBorder)
                    TextField("Enter Pizza Thumbnail Name", text: .constant(""))
                        .textFieldStyle(.roundedBorder)
                    TextField("Enter Pizza Type", text: .constant(""))
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
