//
//  drag＿drop.swift
//  pickSomeFlowers
//
//  Created by kotomi tahkahashi on 2022/04/22.
//

import SwiftUI

struct drag_drop: View {
        @State var position: CGSize = CGSize(width: 200, height: 300)
            
            var drag: some Gesture {
                DragGesture()
                .onChanged { value in
                    self.position = CGSize(
                        width: value.startLocation.x
                            + value.translation.width,
                        height: value.startLocation.y
                            + value.translation.height
                    )
                }
                .onEnded { value in
                    self.position = CGSize(
                        width: value.startLocation.x
                            + value.translation.width,
                        height: value.startLocation.y
                            + value.translation.height
                    )
                }
                
            }
            
            var body: some View {
         
                Image("appleFrpwer")
                    .position(x: position.width, y: position.height)
                    .gesture(drag)
                
            }

    }

struct drag_drop_Previews: PreviewProvider {
    static var previews: some View {
        drag_drop()
    }
}
