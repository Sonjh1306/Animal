//
//  AnimalViewModel.swift
//  Animal
//
//  Created by sonjuhyeong on 5/28/24.
//

import SwiftUI

class AnimalViewModel: ObservableObject {
    
    // Property
    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    @Published var videos: [Video] = Bundle.main.decode("videos.json")
    
    
    @Published var selectedAnimal: String = "tiger"
    
    @Published var gridLayout: [GridItem] = [GridItem(.flexible())]
    @Published var gridColumn: Double = 4.0
    
    
    init() {
        self.gridSwitch()
    }
    
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumn))
    }
}
