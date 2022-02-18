//
//  ContentView.swift
//  Shared
//
//  Created by kotomi tahkahashi on 2022/02/16.
//

import SwiftUI

struct ContentView: View {
    
    //花を選択できるようにしたかったので"@State"をつけてみた。
    //    let flowers: [Flower]  = [
    //        Flower(flowerName: "appleFrpwer"),
    //        Flower(flowerName: "CommonfieldSpeedwell"),
    //        Flower(flowerName: "WhiteClover")
    //    ]
    @State var isTapping = false
    var currentFlower: String = "appleFrpwer"
    var positions: [CGSize] = []
    var body: some View {
        GeometryReader{proxy in
            let size = proxy.size
            ZStack{
                Color.green
                    .ignoresSafeArea()
                    .opacity(0.15)
                flowerGardenView(flower: currentFlower, width: (size.width / 2) - 45)
                    .onTapGesture(count: 2) {
                        self.isTapping.toggle()
                    }
            }
        }
    }
}
/*
 今日は時間切れっぽそう。
 @ViewBuilderの中ではなぜ外で定義した変数が使えないのか。
 あとmutating func使えないところがあって、その理由。
余力があったら(全部完成してからになる予感もするけど) `.offset(x: .random(in: -150...145), y: .random(in: -325...150))`みたいな書き方してるから、引数としてCGFloatを渡せないか検討する。
 今日の休み時間は基本情報のテキスト読みつつ1問コードに起こす。あと読み途中の本あるからそれ読む。
 */

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

@ViewBuilder
func flowerGardenView(flower: String, width: CGFloat )->some View{
    GeometryReader { geometry in
        Text(String("\(geometry.size)"))
    }
    Group{
        //お花の画像を追加する
        ForEach(1...50,id: \.self){_ in
            // 360/10 = 36....
            Image("\(flower)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            //インデックスは0から始まる
            //ここのwidthはGiometryReaderのサイズ
                .offset(x: .random(in: -150...145), y: .random(in: -325...150))
            //                            .rotationEffect(Angle,anchor: UnitPoint = .center)
            //                .onTapGesture(count: 2) {
            //
            //                }
        }
    }
}

