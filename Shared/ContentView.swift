//
//  ContentView.swift
//  Shared
//
//  Created by kotomi tahkahashi on 2022/02/16.
//

import SwiftUI

struct ContentView: View {
    @State var s = false
    @State private var showingAlert = false
    
    @State var flowers: [A_flower] = [
        A_flower(currentflowerName: "appleFrpwer", isPushed: false),
        A_flower(currentflowerName: "appleFrpwer", isPushed: false),
        A_flower(currentflowerName: "appleFrpwer", isPushed: false),
        A_flower(currentflowerName: "appleFrpwer", isPushed: false),
        A_flower(currentflowerName: "appleFrpwer", isPushed: false)
    ]
    var currentFlower: String = "appleFrpwer"
    mutating func deselectA_Flower() {
        flowers = flowers.map {
            var flower = $0
            flower.currentflowerName = currentFlower
            return flower
        }
    }
    
    var body: some View {
        
        ZStack{
            Color.green
                .ignoresSafeArea()
                .opacity(0.15)
            Group{
                ForEach(1...flowers.count,id: \.self){flowerIndex in
                    Image("\(currentFlower)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .offset(x: .random(in: -100...100), y: .random(in: -125...100))
                        .opacity(flowers[flowerIndex - 1].isPushed ? 0 : 1 )
                        .onTapGesture {
                            //.scaleEffectはViewの拡大縮小の動き。
                            //描画された結果を拡大/縮小している
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.08) {
                                /*  一定時間後に処理を終わらせたい時は以下の書き方をする。
                                 DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                 //ここに処理
                                 } */
                                print("\(flowerIndex)つ目の花を消しました。")
                                flowers[flowerIndex - 1].isPushed = true
                            }
                        }
                }
            }
        }
    }

    //    if isPushed(isPushed: s){
//        self.showingAlert = true
//    }
    func isPushed(isPushed: Bool) -> Bool{
        let ispushed : Bool = true
        for i in 1...flowers.count {
            if flowers[i].isPushed != false {
                return ispushed
            }
        }
        
        return ispushed
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
