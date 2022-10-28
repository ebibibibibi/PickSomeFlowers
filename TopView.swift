//
//  TopView.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/02/17.
//

import SwiftUI 

struct TopView: View {

    @StateObject var pickSomeFlowerViewModel: PickSomeFlowerViewModel
    var body: some View {
        
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(pickSomeFlowerViewModel.flowers) {flower in
                        NavigationLink(destination: ContentView(pickSomeFlowerViewModel: pickSomeFlowerViewModel)) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.green)
                                    .frame(width: 280, height: 150)
                                    .opacity(0.15)
                                
                                Text(flower.flowerName)
                                    .bold()
                                    .position(x: 130, y: 20)
                                Image(flower.imageFileName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 130, alignment: .bottom)
                        }
                    }
                }
            }
            .navigationTitle(Text("お花を探しに行こう🌹"))
    }
}
