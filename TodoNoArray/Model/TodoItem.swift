//
//  TodoItem.swift
//  TodoNoArray
//
//  Created by Russell Gordon on 2024-04-13.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done:  Bool
}
