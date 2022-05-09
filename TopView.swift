//
//  TopView.swift
//  pickSomeFlowers (iOS)
//
//  Created by kotomi tahkahashi on 2022/02/17.
//

import SwiftUI 

struct TopView: View {
    @State var flowers: [Flowers]  = [
        Flowers(flowerName: "appleFrpwer",flowerNameJ: "りんごの花"),
        Flowers(flowerName: "CommonfieldSpeedwell",flowerNameJ: "オオイヌノフグリ"),
        Flowers(flowerName: "WhiteClover",flowerNameJ: "クローバー"),
        Flowers(flowerName: "appleFrpwer",flowerNameJ: "りんごの花"),
        Flowers(flowerName: "CommonfieldSpeedwell",flowerNameJ: "オオイヌノフグリ"),
        Flowers(flowerName: "WhiteClover",flowerNameJ: "クローバー"),
        Flowers(flowerName: "CommonfieldSpeedwell",flowerNameJ: "オオイヌノフグリ")
    ]
    @State var currentflower: String = "appleFrpwer"

    var body: some View {
        
//            ScrollViewReader{proxy in
                ScrollView(.vertical, showsIndicators: false){
                    ForEach(flowers){specificFlower in
                        NavigationLink(destination: ContentView(currentFlower: specificFlower.flowerName)){
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.green)
                                    .frame(width:280, height: 150)
                                    .opacity(0.15)
                                
                                Text(specificFlower.flowerNameJ)
                                    .bold()
                                    .position(x:130, y:20)
                                Image(specificFlower.flowerName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 130,alignment: .bottom)
                        }
                    }
                }
            }
            .navigationTitle(Text("お花を探しに行こう🌹"))
            //                .bold()
            //                .font(.title2)
            //                .frame(width: 320, height: 100,alignment: .center )
//        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}


enum DarkModeSetting: Int {
    case followSystem = 0
    case darkMode = 1
    case lightMode = 2
}
