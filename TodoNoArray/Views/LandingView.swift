//
//  ContentView.swift
//  TodoNoArray
//
//  Created by Russell Gordon on 2024-04-13.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    @State var newItemDescription = ""
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    
                }
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    Button("ADD") {
                        // Add the new to-do item
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
