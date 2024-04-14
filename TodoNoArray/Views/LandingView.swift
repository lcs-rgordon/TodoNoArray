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
    @State var secondItem: TodoItem?
    @State var thirdItem: TodoItem?
    
    // Keep track of how many to-do items we have
    @State var itemCount: Int = 0

    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    if firstItem != nil {
                        ItemView(currentItem: firstItem!)
                    }
                    if secondItem != nil {
                        ItemView(currentItem: secondItem!)
                    }
                    if thirdItem != nil {
                        ItemView(currentItem: thirdItem!)
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
                        if itemCount == 0 {
                            // Save the first to-do item
                            firstItem = newTodo
                        } else if itemCount == 1 {
                            // Save the second to-do item
                            secondItem = newTodo
                        } else if itemCount == 2 {
                            // Save the third to-do item
                            thirdItem = newTodo
                        }
                        // Increase item count
                        itemCount += 1
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
