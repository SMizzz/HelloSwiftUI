//
//  AvatarWeatherView.swift
//  OtDoSecondary
//
//  Created by do hee kim on 2022/11/10.
//

import SwiftUI

struct AvatarWeatherView: View {
    //@Binding var locationShow: Bool
    @State private var locationShow: Bool = false
    @State private var themeToggle: Bool = true
    @State private var firstNaviLinkActive = false
    @State var isAccordionExpanded: Bool = false
    
    @State private var iconTitle: String = "Detail Info"
    @State private var iconColor: Color = .white
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    DisclosureGroup(isExpanded: $isAccordionExpanded) {
                        VStack {
                            VStack {
                                Image("LikeLion_01")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image("LikeLion_02")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image("LikeLion_03")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            .padding(.vertical, 15)
                        }
                    } label: {
                        Spacer()
                        Text("오늘 다른 사람들은 이렇게 입었어요!")
                            .bold()
                    }
                    .frame(width: 300)
                    
                }
                .padding(12)
                .frame(width: 360)
                .background(.white.opacity(0.5))
                .cornerRadius(30)
                .shadow(radius: 10)
               
            }
        }
    }
}

struct AvatarWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        //AvatarWeatherView(locationShow: .constant(false))
        AvatarWeatherView()
    }
}
