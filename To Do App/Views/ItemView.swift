//
//  ItemView.swift
//  To Do App
//
//  Created by Danika Peet on 2024-04-09.
//
import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical) },
            icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                
                //tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}

//#Preview {
//    List {
//        ItemView(currentItem: Binding.constant(firstItem))
//        ItemView(currentItem: Binding.constant(secondItem))
//    }
//}
