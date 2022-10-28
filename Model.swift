//
//  Model.swift
//  pickSomeFlowers
//
//  Created by kotomi tahkahashi on 2022/04/22.
//

import SwiftUI

struct Flower: Identifiable {
    var id = UUID().uuidString
    var imageFileName: String
    var flowerName: String
}

//struct ToppingFlower: Identifiable {
//    var id = UUID().uuidString
//    var selectedFlower: Flower = Flower(imageFileName: "flower_ajisai", flowerName: "あじさい")
//    var isPushed: Bool = false
//    var randomFrowerPostions: [CGFloat] = []
//}
