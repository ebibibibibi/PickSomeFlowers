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


// CaseIterableを付与するとallCases プロパティを通して全ての値をコレクションとして取得できるようになる。
//TopViewは配列を回して作成したいので、今回はCaseIterableをつけた。
enum FlowerName: String, Hashable, CaseIterable{
    case appleFrpwer
    case CommonfieldSpeedwell
    case WhiteClove
    
    
    var label: String {
        self.rawValue
    }
    
    var name: String{
        switch self {
        case .appleFrpwer:
            return "りんごの花"
        case .CommonfieldSpeedwell:
            return "オオイヌノフグリ"
        case .WhiteClove:
            return "クローバー"
        }
    }
}




/*
 - オブジェクトとは**何かしらのデータとして扱えるもの**を意味する。
 - 一般的には変数に入れられるもの = オブジェクト(配列, 文字列, 整数, 関数 etc)
 - プログラムがオブジェクトを使うにあたりまずすることが、"オブジェクト専用の領域を確保"すること
 - では、その確保された領域には元々何が入ってるのかというと、バラバラ。
 - その領域を、きちんと期待している値で使えるように上書きする必要がある。これがすなわち”初期化”
 - オブジェクト指向プログラミング言語には、「プログラムの再利用が簡単にできるようになる仕組み」が採用されている。
 - こうした仕様のひとつに「プロトコル(インターフェイス)」がある。
 - これにより、「プログラムを交換可能な部品とすること」が実現できる。
 - メソッドの型だけを宣言するクラスという意味合いからするとModelもこれに当たりそうな感じがする。
 */

//今回は「値を一時的に保持しておきたい」なので、struct。
//structは継承不可のクラスのようなイメージ。値型。
//複数の値を1つの値を表すことができるもの。
//統一して管理したい複数のプロパティがある時便利。


struct Flowers: Identifiable{
    var id = UUID().uuidString
    var flowerName: String
    var flowerNameJ: String
    //    var countFlowers: Int
}

//Hash（ハッシュ値）とは一つ一つのデータを識別したり比較するために与えられる、一意の文字列または数字
//一意性：異なるデータには異なるハッシュ値が与えられる
//不可逆性：ハッシュ値から元のデータに変換することはできない

// A_flower Model
struct A_flower: Identifiable{
    let id = UUID().uuidString
    var currentflowerName: String
    var isPushed: Bool
}

