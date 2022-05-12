//
//  Model.swift
//  pickSomeFlowers
//
//  Created by kotomi tahkahashi on 2022/04/22.
//

import SwiftUI

let randomIntArray = [Int](repeating: 0, count: 10).map { (some: Int) -> Int in
    let randomUInt: Double = Double(arc4random_uniform(750)) // 0 ..< 100 の乱数を作る
    return Int(randomUInt)
}

struct LotFrower: Identifiable{
    var id = UUID().uuidString
    var currentflowerName: String = "appleFrpwer"
    let x = Double(arc4random_uniform(100))
    let y = Double(arc4random_uniform(50))
    var isPushed: Bool = false
}






struct Flowers: Identifiable{
    var id = UUID().uuidString
    var flowerName: String
    var flowerNameJ: String
}
