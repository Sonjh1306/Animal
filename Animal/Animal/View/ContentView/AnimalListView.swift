//
//  AnimalListView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/28/24.
//

import SwiftUI

struct AnimalListView: View {
    
    let animal: Animal
    
    var body: some View {
        HStack(spacing: 20) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(spacing: 10) {
                Text(animal.name)
                    .hLeading()
                    .font(.title)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .padding(.trailing, 10)
            }
        }
    }
}

#Preview {
    AnimalListView(animal: Animal.sampleAnimal)
}
