//
//  ViewModel.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi takahashi on 2022/10/22.
//

import SwiftUI

class ToppingFlower {
    let id = UUID().uuidString
    let selectedFlower: Flower
    var randomFrowerPostions: CGSize
    var isPushed: Bool = false
    
    init(selectedFlower: Flower) {
        self.selectedFlower = selectedFlower
        self.randomFrowerPostions = (.init(width: .random(in: -20...60), height: .random(in: -45...45)))
    }
}

class PickSomeFlowerViewModel: ObservableObject {
    let flowers: [Flower]  = [
        Flower(flowerName: "あじさい"),
        Flower(flowerName: "チューリップ"),
        Flower(flowerName: "朝顔")
    ]
    
    let flowerCount: Int = 2
    @Published var selectedFlower: Flower?
    @Published var toppingFlowers: [ToppingFlower] = []
    
    func makeToppingFlowers(flower: Flower) {
        for _ in 1...flowerCount {
            toppingFlowers.append(.init(selectedFlower: flower))
        }
    }
}
