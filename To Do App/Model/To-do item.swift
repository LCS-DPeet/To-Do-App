//
//  To-do item.swift
//  To Do App
//
//  Created by Danika Peet on 2024-04-09.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = TodoItem(title: "study for chemistry quiz", done: false)
let secondItem = TodoItem(title: "Finish computer science assignment", done: true)
let thirdItem = TodoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem,
]

