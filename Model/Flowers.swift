//
//  Flowers.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/02/17.
//

import SwiftUI

//今回は「値を一時的に保持しておきたい」なので、struct。
//structは継承不可のクラスのようなイメージ。値型。
//複数の値を1つの値を表すことができるもの。
//統一して管理したい複数のプロパティがある時便利。


struct Flower: Identifiable{
    var id = UUID().uuidString
    var flowerName: String
    var flowerNameJ: String
//    var countFlowers: Int
}

//Hash（ハッシュ値）とは一つ一つのデータを識別したり比較するために与えられる、一意の文字列または数字
//一意性：異なるデータには異なるハッシュ値が与えられる
//不可逆性：ハッシュ値から元のデータに変換することはできない

