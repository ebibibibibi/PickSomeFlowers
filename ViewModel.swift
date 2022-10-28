//
//  ViewModel.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/10/22.
//

import SwiftUI

class ToppingFlower {
    let id = UUID().uuidString
    let selectedFlower: Flower
    let randomFrowerPostions: CGSize
    var isPushed: Bool = false
    
    init(selectedFlower: Flower) {
        self.selectedFlower = selectedFlower
        self.randomFrowerPostions = (.init(width:.random(in: -20...60), height: .random(in: -45...45)))
    }
}


class PickSomeFlowerViewModel: ObservableObject {
    let flowers: [Flower]  = [
        Flower(imageFileName: "flower_ajisai", flowerName: "あじさい"),
        Flower(imageFileName: "flower_tullip", flowerName: "チューリップ"),
        Flower(imageFileName: "flower_asagao", flowerName: "朝顔")
    ]
    
    let flowerCount: Int = 10
    
    @Published var toppingFlowers: [ToppingFlower] = []
    
    @Published var selectedFlower: Flower
    
    init(){
        selectedFlower = Flower(imageFileName: "flower_ajisai", flowerName: "あじさい")
    }
    
    func makeToppingFlowers(flower: Flower) {
        for _ in 1...flowerCount {
            toppingFlowers.append(.init(selectedFlower: flower))
        }
    }
}
