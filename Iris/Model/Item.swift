//
//  Item.swift
//  Iris
//
//  Created by Chamomile on 19/07/22.
//

import Foundation

struct Item: Identifiable {
    let id: Int
    
    var name: String
    
    var emoji: String?
    
    static let example = Item(id: 1, name: "January", emoji: "❄️")
}
