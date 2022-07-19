//
//  TierListView.swift
//  Iris
//
//  Created by Chamomile on 19/07/22.
//

import SwiftUI

struct TierListView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(
                cornerRadius: 10,
                style: .continuous)
                .stroke(.primary, lineWidth: 2.5)
            
            VStack {
                ZStack {
                    Rectangle()
                        .stroke(.primary, lineWidth: 5)
                        .cornerRadius(10, corners: [.topLeft, .topRight])
                        .frame(width: 350, height: 64)
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .stroke(.primary, lineWidth: 5)
                                .cornerRadius(10, corners: .topLeft)
                                .frame(width: 64, height: 64)
                            
                            Text("S")
                                .font(.largeTitle).bold()
                        }
                        
                        ItemIcon(item: Category.example.items[0])
                        
                        Spacer()
                    }
                }
                
                Spacer()
            }
        }
        .frame(minWidth: 350, idealWidth: 350, maxWidth: 350, minHeight: 300, idealHeight: 400, maxHeight: 500, alignment: .top)
    }
}

struct TierListView_Previews: PreviewProvider {
    static var previews: some View {
        TierListView()
            .preferredColorScheme(.dark)
    }
}
 
