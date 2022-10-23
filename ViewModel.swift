//
//  ViewModel.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/10/22.
//

import SwiftUI

class PickSomeFlowerViewModel: ObservableObject {
    @Published var flowers: [Flower]  = [
        Flower(flowerName: "flower_ajisai", flowerNameJ: "あじさい"),
        Flower(flowerName: "flower_tullip", flowerNameJ: "チューリップ"),
        Flower(flowerName: "flower_asagao", flowerNameJ: "朝顔")
    ]
    @Published var currentFlower: Flower = Flower(flowerName: "flower_ajisai", flowerNameJ: "あじさい")
    
    init(){
        
    }
    
    
}
