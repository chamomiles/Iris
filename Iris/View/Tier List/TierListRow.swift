//
//  TierListRow.swift
//  Iris
//
//  Created by Chamomile on 20/07/22.
//

import SwiftUI

struct TierListRow: View {
    let tier: String
    let items: [Item]
    
    var body: some View {
        ZStack {
            Rectangle()
                .stroke(.primary, lineWidth: 2.5)
                .frame(width: 350, height: 64)
            
            HStack {
                ZStack {
                    Rectangle()
                        .stroke(.primary, lineWidth: 2.5)
                        .frame(width: 64, height: 64)
                    
                    Text(tier)
                        .font(.largeTitle).bold()
                }
                
                ForEach(items) {
                    ItemIcon($0)
                }
                
                Spacer()
            }
        }
    }
    
    init(_ tier: String, items: [Item]) {
        self.tier = tier
        self.items = items
    }
}

struct TierListRow_Previews: PreviewProvider {
    static var previews: some View {
        TierListRow("S", items: [Category.example.items[0]])
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .frame(width: 350, height: 64)
            .preferredColorScheme(.dark)
    }
}
