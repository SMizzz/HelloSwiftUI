//
//  SchoolItem.swift
//  Schools_Multiplatform
//
//  Created by Jero on 2022/11/30.
//

import Foundation

struct SchoolItem: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var description: String
}

let schoolItems: [SchoolItem] = [
    SchoolItem(name: "스타트업 스쿨",
               description: "서비스 탄생의 시작과 끝을 만드는 "),
    SchoolItem(name: "앱 스쿨", description: "개발기초와 실무능력을 갖춘 ios개발자 양성 교육"),
    SchoolItem(name: "블록체인 스쿨", description: "새로운 기술을 갖춘 대체불가한 개발자 양성 교육"),
    SchoolItem(name: "백엔드 스쿨", description: "5달 간의 여정, 백엔드 개발자로 성장하는 기름길"),
    SchoolItem(name: "AI 스쿨", description: "실무 맞춤 성장 지향형 데이터 분석가 양성 교육"),
    SchoolItem(name: "프론트엔드 스쿨", description: "기초가 탄탄한 웹 개발자 양성 교육")
]
