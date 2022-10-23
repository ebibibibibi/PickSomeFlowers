//
//  Model.swift
//  pickSomeFlowers
//
//  Created by kotomi tahkahashi on 2022/04/22.
//

import SwiftUI

struct LotFrower: Identifiable {
    var id = UUID().uuidString
    var currentflowerName: Flower = Flower(flowerName: "flower_ajisai", flowerNameJ: "あじさい")
    let x = Double.random(in: 0..<100)
    let y = Double.random(in: 0..<50)
    var isPushed: Bool = false
}

struct Flower: Identifiable {
    var id = UUID().uuidString
    var flowerName: String
    var flowerNameJ: String
}
