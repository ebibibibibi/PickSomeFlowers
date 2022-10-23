//
//  ContentView.swift
//  Shared
//
//  Created by kotomi tahkahashi on 2022/02/16.
//

import SwiftUI

struct ContentView: View {
    
    var array: [[String]] = []
    @State var flowers: [LotFrower] = [
        LotFrower(),
        LotFrower(),
        LotFrower(),
        LotFrower()
    ]
    var currentFlower: String = "flower_tullip"
    
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
                .opacity(0.15)
            Group {
                ForEach(1...flowers.count, id: \.self) {flowerIndex in
                    Image("\(currentFlower)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .offset(x: flowers[flowerIndex - 1].x, y: flowers[flowerIndex - 1].y)
                        .opacity(flowers[flowerIndex - 1].isPushed ? 0 : 1 )
                        .onTapGesture {
                            print("\(flowerIndex)つ目の花を消しました。")
                            flowers[flowerIndex - 1].isPushed = true
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
