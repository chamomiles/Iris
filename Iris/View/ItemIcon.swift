//
//  ItemIcon.swift
//  Iris
//
//  Created by Chamomile on 19/07/22.
//

import SwiftUI

struct ItemIcon: View {
    let item: Item
    
    var body: some View {
        ZStack {
            RoundedRectangle(
                cornerRadius: 10,
                style: .continuous)
            .stroke(.primary, lineWidth: 2.5)
            
            VStack {
                Text(item.emoji ?? "")
                    .font(.title)
                    .offset(x: 1) // centers emoji
                
//                Text(item.name)
//                    .font(.caption).bold()
            }
        }
        .frame(width: 48, height: 48)
    }
}




struct ItemIcon_Previews: PreviewProvider {
    static var previews: some View {
        ItemIcon(item: Category.example.items[0])
            .preferredColorScheme(.dark)
    }
}
