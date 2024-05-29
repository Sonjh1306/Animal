//
//  AnimalViewModel.swift
//  Animal
//
//  Created by sonjuhyeong on 5/28/24.
//

import Foundation

class AnimalViewModel: ObservableObject {
    
    // Property
    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    @Published var videos: [Video] = Bundle.main.decode("videos.json")
    
}
