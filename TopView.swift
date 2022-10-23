//
//  TopView.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/02/17.
//

import SwiftUI 

struct TopView: View {

    @State var flowers: [Flower]  = [
        Flower(imageFileName: "flower_ajisai", flowerName: "あじさい"),
        Flower(imageFileName: "flower_tullip", flowerName: "チューリップ"),
        Flower(imageFileName: "flower_asagao", flowerName: "朝顔")
    ]
    @State var selectedFlower: String = "flower_asagao"
    var body: some View {
        
//            ScrollViewReader{proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(flowers) {specificFlower in
                        NavigationLink(destination: ContentView(selectedFlower: specificFlower.imageFileName)) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.green)
                                    .frame(width: 280, height: 150)
                                    .opacity(0.15)
                                
                                Text(specificFlower.flowerName)
                                    .bold()
                                    .position(x: 130, y: 20)
                                Image(specificFlower.imageFileName)
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

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
