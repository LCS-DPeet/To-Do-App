//
//  To-do item.swift
//  To Do App
//
//  Created by Danika Peet on 2024-04-09.
//

import SwiftData

@Model
class TodoItem: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

let firstItem = TodoItem(title: "study for chemistry quiz", done: false)
let secondItem = TodoItem(title: "Finish computer science assignment", done: true)
let thirdItem = TodoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem,
]

