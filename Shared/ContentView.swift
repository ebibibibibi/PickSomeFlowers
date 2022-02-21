//
//  ContentView.swift
//  Shared
//
//  Created by kotomi tahkahashi on 2022/02/16.
//

import SwiftUI

struct ContentView: View {
    //    init() { print("Child.init()") }
    @State var flowers: [A_flower] = [
        A_flower(currentflowerName: "appleFrpwer", isPushed: false),
        A_flower(currentflowerName: "appleFrpwer", isPushed: false),
        A_flower(currentflowerName: "appleFrpwer", isPushed: false),
        A_flower(currentflowerName: "appleFrpwer", isPushed: false),
        A_flower(currentflowerName: "appleFrpwer", isPushed: false)
    ]
    
    @State var isPushed = false
    //    mutating func prepFlags(){
    //           var initIsReplied: [Bool] = [Bool]()
    //           for _ in 0..<elementCount {
    //               initIsReplied.append(false)
    //           }
    //           _isReplied = State(initialValue: initIsReplied)
    //       }
    @State private var opacity = 1.0
    var currentFlower: String = "appleFrpwer"
    mutating func deselectA_Flower() {
        flowers = flowers.map {
            var flower = $0
            flower.currentflowerName = currentFlower
            return flower
        }
    }
    var body: some View {
        //        GeometryReader{proxy in
        //            let size = proxy.size
        ZStack{
            Color.green
                .ignoresSafeArea()
                .opacity(0.15)
            VStack{
                
                ForEach(1...flowers.count,id: \.self){flowerIndex in
                    
                    Image("\(currentFlower)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 90)
                    
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
}

//struct FlowerCharacters: View{
//    var body: some View{
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





