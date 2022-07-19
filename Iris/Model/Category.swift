//
//  Category.swift
//  Iris
//
//  Created by Chamomile on 19/07/22.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    
    var name: String
    
    var items: [Item]
    
    
    
    static let example = Category(name: "Months",
                                  items:
                                    [
                                        Item(id: 1, name: "January", emoji: "❄️"),
                                        Item(id: 2, name: "February", emoji: "🍧"),
                                        Item(id: 3, name: "March", emoji: "🌱"),
                                        Item(id: 4, name: "April", emoji: "🌼"),
                                        Item(id: 5, name: "May", emoji: "⚡️"),
                                        Item(id: 6, name: "June", emoji: "☀️"),
                                        Item(id: 7, name: "July", emoji: "⛱"),
                                        Item(id: 8, name: "August", emoji: "🌤"),
                                        Item(id: 9, name: "September", emoji: "🍃"),
                                        Item(id: 10, name: "October", emoji: "🍂"),
                                        Item(id: 11, name: "November", emoji: "☔️"),
                                        Item(id: 12, name: "December", emoji: "🌨"),
                                    ]
                                 )
}
