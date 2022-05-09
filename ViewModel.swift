//
//  ViewModel.swift
//  pickSomeFlowers
//
//  Created by kotomi tahkahashi on 2022/04/22.
//

import SwiftUI

//お花の情報をもつオブジェクトを作成するために、FlowerEntity classを作成する。
class FlowerEntity: ObservableObject {
//    @Published private var model: Flower = Flower()
    var id = UUID().uuidString
    var flowerName: String
    var flowerNameJ: String
    var flowerCoordinateX: CGFloat
    var flowerCoordinateY: CGFloat
    
    init(flowerName: String, flowerNameJ: String, flowerCoordinateX: CGFloat, flowerCoordinateY: CGFloat ){
        self.flowerName = flowerName
        self.flowerNameJ = flowerNameJ
        self.flowerCoordinateX = CGFloat.random(in: 1...1000)
        self.flowerCoordinateY = CGFloat.random(in: 1...1000)
    }
    
    func choiceFlower(){
        
}
}

class Elower: ObservableObject {
    
    @Published private var model: Pictures = Pictures()
    
    var pictures: [Pictures.Picture] {model.pictures}
    
    func addpicture(_ picture: UIImage, at location: CGSize) {
        model.addPicture(picture, x: location.width, y: location.height)
    }
    
    func RandomPosition(_ picture: Pictures.Picture, by offset: CGSize) {
        if let index = model.pictures.firstIndex(of: picture) {
            model.pictures[index].x += offset.width
            model.pictures[index].y += offset.height
        }
    }
    //    init() {
    //
    //    }
}

/*
 # 初期化
 - classでも構造体でも、ストアドプロパティは必ず初期化しないといけない。
 - 初期化メソッドが`init`
 - 原則的にイニシャライザは必要。
 - とはいえ、全てのストアドプロパティにデフォルト値がある場合は初期化は不要。
 - structの場合は全てのストアドプロパティにデフォルト値が無かったとしても、メンバーワイズイニシャライザ (memberwise initializer) が暗黙的に作成される。
 - 全てのプロパティを初期化するイニシャライザのことをデジグネイテッドイニシャライザという。
 - Swiftのclass定義においては最低ひとつのデジグネイテッドイニシャライザが必要
 - 副次的なイニシャライザをコンビニエンスイニシャライザという。
 -
 */
