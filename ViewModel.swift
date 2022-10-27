//
//  ViewModel.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/10/22.
//

import SwiftUI

class PickSomeFlowerViewModel: ObservableObject {
    let flowers: [Flower]  = [
        Flower(imageFileName: "flower_ajisai", flowerName: "あじさい"),
        Flower(imageFileName: "flower_tullip", flowerName: "チューリップ"),
        Flower(imageFileName: "flower_asagao", flowerName: "朝顔")
    ]
    let flowerCount: Int = 10
    @Published var selectedFlower: Flower
    
    init(){
        selectedFlower = Flower(imageFileName: "flower_ajisai", flowerName: "あじさい")
    }
    
    func makeToppingFlowers(flower: Flower) -> [ToppingFlower] {
        var returnArray:[ToppingFlower] = []
        for _ in 1...flowerCount {
            let positions: [CGFloat] = makeRandomPosition()
            returnArray.append(.init(selectedFlower: flower, randomFrowerPostions: positions))
        }
        return returnArray
    }
    
    func makeRandomPosition() -> [CGFloat] {
        var positions: [CGFloat] = []
        for _ in 1...flowerCount {
            positions.append(.init(width: .random(in: -20...60), height: .random(in: -45...45)))
        }
        return positions
    }
}
