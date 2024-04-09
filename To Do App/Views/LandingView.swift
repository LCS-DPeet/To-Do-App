//
//  LandingView.swift
//  To Do App
//
//  Created by Danika Peet on 2024-04-08.
//

import SwiftUI

struct LandingView: View {
    
    //MARK: stored properties
    // the item is currently being added
    @State var newItemDescription: String = ""
    
    // MARK: computed properties
    // the search text
   @State var searchText = ""
    
    var body: some View {
        
        NavigationView  {
            
            VStack {
                
                List {
                    Text("Study for chemistry quiz")
                    Text("Finish computer science assignment")
                    Text("Go for a run around campus")
                    
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item",
                              text: $newItemDescription)
                    
                    Button("ADD") {
                        // add the new to-do item
                    }
                    .font(.caption)
                }
                .padding(20.0)
                
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    LandingView()
}
