//
//  MyUILabel.swift
//  HelloUIView
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI

struct MyUILabel: UIViewRepresentable {
    
    var text: String
    // UIView 기반 컴퍼넌트의 인스턴스를 생성하고
    // 필요한 초기화 작업을 수행한 뒤 반환하는 역할을 한다
    // 통역사와 고용계약
    func makeUIView(context: UIViewRepresentableContext<MyUILabel>) -> UILabel {
        let myLabel = UILabel()
        myLabel.text = text
        return myLabel
    }
    
    // UIView 자체를 업데이트해야 하는 변경이
    // SwiftUI 뷰에서 생길 때마다 호출된다.
    func updateUIView(
        _ uiView: UILabel,
        context: UIViewRepresentableContext<MyUILabel>) {
        
    }
}

struct MyUILabel_Previews: PreviewProvider {
    static var previews: some View {
        MyUILabel(text: "Hello")
    }
}
