//
//  LandingView.swift
//  To Do App
//
//  Created by Danika Peet on 2024-04-08.
//

import SwiftUI

struct LandingView: View {
    
    //MARK: stored properties
    
    @State var newItemDescription: String = ""
    
    // MARK: computed properties
   
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView  {
            
            VStack {
                
                List {
                    Text("Study for chemistry quiz")
                    Text("Finish computer science assignment")
                    Text("Go for a run around campus")
                    
                }
                
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    LandingView()
}
