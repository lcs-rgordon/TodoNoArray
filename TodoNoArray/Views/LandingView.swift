//
//  ContentView.swift
//  TodoNoArray
//
//  Created by Russell Gordon on 2024-04-13.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // Whatever is being typed as a new to-do is being added
    @State var newItemDescription = ""
    
    // Holds to-do item
    @State var firstItem: TodoItem?
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    if firstItem != nil {
                        ItemView(currentItem: firstItem!)
                    }
                }
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    Button("ADD") {
                        // Add the new to-do item
                        let newTodo = TodoItem(
                            title: newItemDescription,
                            done: false
                        )
                        // Save the first to-do item
                        firstItem = newTodo
                    }
                    .font(.caption)
                }
                .padding(20)

            }
            .navigationTitle("To do")

        }
    }
}

#Preview {
    LandingView()
}
