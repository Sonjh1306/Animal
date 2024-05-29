//
//  Video.swift
//  Animal
//
//  Created by sonjuhyeong on 5/29/24.
//

import SwiftUI

struct Video: Identifiable, Codable {
    let id: String
    let name: String
    let headline: String
    let videoid: String
    
    static let sampleVideoData = Video(
        id: "tiger",
        name: "호랑이",
        headline: "호랑이는 식육목 고양이과에 속하는 포유류로, 고양이과 동물들 중 가장 큰 동물이다. 등의 털색은 선명한 황갈색이고 불규칙적인 검은색 줄무늬가 많다.",
        videoid: "FK3dav4bA4s"
    )
}

