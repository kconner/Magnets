//
//  PrimitiveCell.swift
//  Primitives
//
//  Created by Kevin Conner on 6/23/19.
//  Copyright © 2019 Kevin Conner. All rights reserved.
//

import SwiftUI

struct PrimitiveCell : View {
    var primitive: Primitive
    
    var body: some View {
        NavigationButton(
            destination: PrimitiveView(primitive: primitive)
        ) {
            HStack {
                Text(primitive.name)
                
                Spacer()
                
                Image(systemName: "star.fill")
                    .foregroundColor(.secondary)
            }
        }
    }
}

#if DEBUG
struct PrimitiveCell_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            PrimitiveCell(primitive: PreviewModels.sphere)
                .previewLayout(.sizeThatFits)
            
            NavigationView {
                List {
                    PrimitiveCell(primitive: PreviewModels.box)
                }
                .navigationBarTitle(Text("Mock List"))
            }
        }
    }
}
#endif
