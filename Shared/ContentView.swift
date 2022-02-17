//
//  ContentView.swift
//  Shared
//
//  Created by kotomi tahkahashi on 2022/02/16.
//

import SwiftUI

struct ContentView: View {
    @State var civilizations = ["ポルトガル", "スペイン", "オランダ", "フランス", "日本", "アステカ"]
    //花を選択できるようにしたかったので"@State"をつけてみた。
    //    let flowers: [Flower]  = [
    //        Flower(flowerName: "appleFrpwer"),
    //        Flower(flowerName: "CommonfieldSpeedwell"),
    //        Flower(flowerName: "WhiteClover")
    //    ]
    @State var currentFlower: String = "appleFrpwer"
    var flowername: String = "りんごの花"
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
                .opacity(0.15)
        }
        Text(flowername).font(.system(size: 30))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

