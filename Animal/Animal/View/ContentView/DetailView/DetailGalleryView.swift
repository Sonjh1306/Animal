//
//  DetailGalleryView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/28/24.
//

import SwiftUI

struct DetailGalleryView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { (gallery) in
                    Image(gallery)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
}

#Preview {
    DetailGalleryView(animal: Animal.sampleAnimal)
}
