//
//  ContentView.swift
//  Shared
//
//  Created by kotomi tahkahashi on 2022/02/16.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var pickSomeFlowerViewModel: PickSomeFlowerViewModel
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .opacity(0.15)
            Group {
                ForEach(pickSomeFlowerViewModel.toppingFlowers, id: \.id) {
                    toppingFlower in
                    Image("\(toppingFlower.selectedFlower.imageFileName)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .opacity(toppingFlower.isPushed ? 0 : 1 )
                        .onTapGesture {
                            print("花を摘みました。")
                            toppingFlower.isPushed.toggle()
                        }
                }
            }
        }
        .onAppear(){
            pickSomeFlowerViewModel.makeToppingFlowers(flower: pickSomeFlowerViewModel.selectedFlower)
        }
    }
}
