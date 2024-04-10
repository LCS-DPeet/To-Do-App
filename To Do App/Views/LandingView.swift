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
    
    @State var todos: [TodoItem] = exampleItems
    
    // MARK: computed properties
    // the search text
    @State var searchText = ""
    
    //MARK: functions
    
    
    //create the new list of to-do item instance
    
    var body: some View {
        
        NavigationView  {
            
            VStack {
                
                List (todos) { todo in
                    ItemView(currentItem: todo)
                    
                    
                }
                
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item",
                              text: $newItemDescription)
                    
                    Button("ADD") {
                        // add the new to-do item
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20.0)
                
            }
            .navigationTitle("To do")
        }
    }
    func createToDo(withTitle title: String) {
        let todo = TodoItem (title: title, done: false)
        
        todos.append(todo)
    }
}

#Preview {
    LandingView()
}



