//
//  LandingView.swift
//  To Do App
//
//  Created by Danika Peet on 2024-04-08.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    
    
    
    //MARK: stored properties
    // the item is currently being added
    @State var newItemDescription: String = ""
    
    // the list of to-do items
    @Query var todos: [TodoItem]
    
    
    // MARK: computed properties
    // the search text
    @State var searchText = ""
    
    // Access the model context (required to do additons, updates, ect..)
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        
        NavigationView  {
            
            VStack {
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                        
                    }
                    .onDelete(perform: removeRows)
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
            .onAppear {
                printCommandToOpenDatabaseFile()
            }
        }
    }
    
 
    func createToDo(withTitle title: String) {
        let todo = TodoItem (title: title, done: false)
        
        // Use the model context to insert the new to-do
        modelContext.insert(todo)
    }
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
        
}
    
    #Preview {
            LandingView()
        }
    
    
    
