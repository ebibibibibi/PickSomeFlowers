//
//  ViewModel.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/10/22.
//

import SwiftUI

class PickSomeFlowerViewModel: ObservableObject {
    @Published var flowers: [Flowers]  = [
        Flowers(flowerName: "flower_ajisai", flowerNameJ: "あじさい"),
        Flowers(flowerName: "flower_tullip", flowerNameJ: "チューリップ"),
        Flowers(flowerName: "flower_asagao", flowerNameJ: "朝顔")
    ]
    @Published var currentFlower: Flowers = Flowers(flowerName: "flower_ajisai", flowerNameJ: "あじさい")
    
    init(){
        
    }
    
    
}
