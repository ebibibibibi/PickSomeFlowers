//
//  ViewModel.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/10/22.
//

import SwiftUI

class PickSomeFlowerViewModel: ObservableObject {
    @Published var flowers: [Flower]  = [
        Flower(imageFileName: "flower_ajisai", flowerName: "あじさい"),
        Flower(imageFileName: "flower_tullip", flowerName: "チューリップ"),
        Flower(imageFileName: "flower_asagao", flowerName: "朝顔")
    ]
    @Published var selectedFlower: Flower = Flower(imageFileName: "flower_ajisai", flowerName: "あじさい")
    
    init(){
        
    }
    
    
}
