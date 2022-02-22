//
//  Alert.swift
//  pickSomeFlowers
//
//  Created by kotomi tahkahashi on 2022/02/22.
//

import SwiftUI

struct Alert: View {
    @State private var showingAlert = false
    
    var body: some View {
        
        Button("タップしてね") {
            self.showingAlert = true
        }
//        .alert(isPresented: $showingAlert) {
//            Alert(title: Text("タイトル"),
//                  message: Text("詳細メッセージです"))   // 詳細メッセージの追加
//        }
        
    }
}
    
    struct Alert_Previews: PreviewProvider {
        static var previews: some View {
            Alert()
        }
    }
