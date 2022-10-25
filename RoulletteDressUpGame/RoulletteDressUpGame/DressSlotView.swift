//
//  DressSlotView.swift
//  RoulletteDressUpGame
//
//  Created by Jero on 2022/10/24.
//

import SwiftUI

struct DressSlotView: View {
    @ObservedObject var resultData: DressUpData = DressUpData()
    
//    @State private var dressArray: [String] = ["블루 드레스", "그린 드레스", "레이어드 드레스", "레드땡땡이 드레스"]
//    let dressImageName: [String] = ["blueDress", "greenDress", "layerDress", "redDotDress"]
    
    @State private var dressArray: [String] = ["블루그린", "블루그린_오리", "분홍이", "왕관프린팅 분홍이"]
    let dressImageName: [String] = ["baby_blueGreenOrigin", "baby_blueGreenDuck", "baby_pinkClothes", "baby_pinkCrown"]
    
    @State private var girlsArray: [String] = ["여자아기", "금발여자아기"]
    let girlsImageName: [String] = ["baby" , "blondeHairBaby"]
    @State private var testString: String = ""
    @State private var dressNameIndex = 0
    @State private var girlNameIndex = 0
    
    var body: some View {
        NavigationView {
            
            VStack {
                HStack {
                    Picker(selection: $dressNameIndex, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                        
                        ForEach(0 ..< dressArray.count) { index in
                            Text(dressArray[index])
                        }
                    }
                    .pickerStyle(.wheel)
                    .frame(width: 150)
                    .clipped()
                    
                    Text("")
                    
                    Picker(selection: $girlNameIndex, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                        ForEach(0 ..< girlsArray.count) { index in
                            Text(girlsArray[index])
                        }
                    }
                    .pickerStyle(.wheel)
                    .frame(width: 140)
                    .clipped()
                    
                
                }
                
                Button {
                    print("확인")
//                    resultData.addResultSentence("슬롯머신게임에서 드레스는 \(dressArray[dressNameIndex])를 골랐고, 소녀는 \(girlsArray[girlNameIndex])를 골랐다.")
                    resultData.addResultGirlSentence(
//                        girlNameIndex,
//                        dressNameIndex,
                        "슬롯머신게임",
                        dressArray[dressNameIndex],
                        girlsArray[girlNameIndex])
                    
                    resultData.addInformImageNameArray(dressImageName[dressNameIndex], girlsImageName[girlNameIndex])
                } label: {
                    Text("정했다!!!")
                }
                .padding()

                NavigationLink(destination: ResultDressUpView(resultData: resultData)) {
                    Text("결과확인")
                }
            }
        }
    }
}

struct DressSlotView_Previews: PreviewProvider {
    static var previews: some View {
        DressSlotView()
    }
}
