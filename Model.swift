//
//  Model.swift
//  pickSomeFlowers
//
//  Created by kotomi tahkahashi on 2022/04/22.
//

import UIKit
import SwiftUI

struct Flower{
    // A_flower Model
    struct Flower: Identifiable, Hashable{
        var id = UUID().uuidString
        var currentflowerName: String
        var x: Int
        var y: Int
        var isPushed: Bool
    }
    
}
//    fileprivate init(isPushed: UIImage, x: CGFloat, y: CGFloat, id: Int) {
//        self.isPushe = isPushe
//        self.x = x
//        self.y = y
//        self.id = id
//    }

//Hash（ハッシュ値）とは一つ一つのデータを識別したり比較するために与えられる、一意の文字列または数字
//一意性：異なるデータには異なるハッシュ値が与えられる
//不可逆性：ハッシュ値から元のデータに変換することはできない


//Pictures構造体
struct Pictures {
    //変数picture
    var pictures = [Picture]()

    //Picture配列のモデル
    struct Picture: Identifiable, Hashable {
        let id: Int
        var x: CGFloat
        var y: CGFloat
        var picture: UIImage
        //fileprivateはアクセス修飾子　同じfile内であればアクセス可能
        //Pictureの初期化
        fileprivate init(picture: UIImage, x: CGFloat, y: CGFloat, id: Int) {
            self.picture = picture
            self.x = x
            self.y = y
            self.id = id
        }
    }  //struct Picture終わり
    
//    (UIImage(imageLiteralResourceName: "appleFrpwer"), at: CGSize(width: 100, height: 200))
    
//    func addpicture(_ picture: UIImage, at location: CGSize) {
//        model.addPicture(picture, x: location.width, y: location.height)
//    }
    //写真を一枚増やすとuniquePictureIdが割り振られる。
    private var uniquePictureId = 0
    mutating func addPicture(_ picture: UIImage, x: CGFloat, y: CGFloat) {
        uniquePictureId += 1
        pictures.append(Picture(picture: picture, x: x, y: y, id: uniquePictureId))
        //画像が追加されると、座標とidを変えて、[Picture]に返す。
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

