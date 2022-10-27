//
//  ContentView.swift
//  Shared
//
//  Created by kotomi tahkahashi on 2022/02/16.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var pickSomeFlowerViewModel: PickSomeFlowerViewModel
    var toppingFlowers: [ToppingFlower]
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .opacity(0.15)
            Group {
                ForEach(toppingFlowers, id: \.self)
                {toppingFlower in
                    Image("\(toppingFlower.selectedFlower.imageFileName)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .offset(x: toppingFlower.randomFrowerPostions[0], y: toppingFlower.randomFrowerPostions[1])
                        .opacity(toppingFlower.isPushed ? 0 : 1 )
                        .onTapGesture {
                            print("花を消しました。")
                            toppingFlower.isPushed.toggle()
                        }
                }
            }
        }
    }
}
