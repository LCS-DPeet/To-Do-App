//
//  LandingView.swift
//  To Do App
//
//  Created by Danika Peet on 2024-04-08.
//

import SwiftUI

struct LandingView: View {
    
    @State var newItemDescription: String = ""
    
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView  {
            VStack {
                
                Text ("To Do")
                    .font(.title3)
                
    Rectangle()
                    .cornerRadius(10.0)
                    .padding()
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    LandingView()
}
