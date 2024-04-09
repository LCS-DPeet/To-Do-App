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
                    Label(
                        title: {     Text("Study for chemistry quiz")},
                        icon: { Image(systemName: "circle") }
                    )
                    Label(
                        title: {  Text("Finish computer science assignment") },
                        icon: { Image(systemName: "circle") }
                    )
                    Label(
                        title: {     Text("Go for a run around campus") },
                        icon: { Image(systemName: "circle") }
                    )
                
                    
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
