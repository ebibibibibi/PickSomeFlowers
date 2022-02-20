//
//  ContentView.swift
//  Shared
//
//  Created by kotomi tahkahashi on 2022/02/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPushed = false
    @State private var opacity = 1.0
    var currentFlower: String = "appleFrpwer"
    var body: some View {
        //        GeometryReader{proxy in
        //            let size = proxy.size
        ZStack{
            Color.green
                .ignoresSafeArea()
                .opacity(0.15)
            Group{
                ForEach(1...2,id: \.self){index in
                    let flowerIndex = index
                    
                    Button(action: {
                        isPushed.toggle()
                        print("\(flowerIndex)つ目の花を消しました。")
                    }, label: {
                        
                        //                                Text("\(flowerIndex)つ目の花")
                        Image("\(currentFlower)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90, height: 90)
//                            .opacity(isPushed ? 0 : 1)
                    })
                        .offset(x: .random(in: -150...145), y: .random(in: -325...150))
                        .opacity(isPushed ? 0 : 1)
                    //                    }
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

