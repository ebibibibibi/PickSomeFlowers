//
//  IdentiFlower.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/02/20.
//

import SwiftUI

// A_flower Model
struct A_flower: Identifiable{
    var id = UUID().uuidString
    var currentflowerName: String
    var isPushed: Bool = false
}
