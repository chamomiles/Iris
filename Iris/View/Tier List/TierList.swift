//
//  TierList.swift
//  Iris
//
//  Created by Chamomile on 19/07/22.
//

import SwiftUI

struct TierList: View {
    let tiers = ["S", "A", "B", "C", "F"]
    
    let example = [
        Category.example.items[0],
        Category.example.items[1],
        Category.example.items[2]
        
    ]
    
    var body: some View {
        ZStack {
            RoundedRectangle(
                cornerRadius: 10,
                style: .continuous)
                .stroke(.primary, lineWidth: 5)
            
            VStack(spacing: 0) {
                ForEach(tiers, id: \.self) {
                    TierListRow($0, items: example)
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .frame(width: 350, height: 64 * CGFloat(tiers.count))
    }
}

struct TierListView_Previews: PreviewProvider {
    static var previews: some View {
        TierList()
            .preferredColorScheme(.dark)
    }
}
 
