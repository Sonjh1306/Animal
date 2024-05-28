//
//  ExternalWebLink.swift
//  Animal
//
//  Created by sonjuhyeong on 5/28/24.
//

import SwiftUI

struct ExternalWebLink: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("멸종 위기 야생동물 포털")
                
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(destination: URL(string: animal.link)!, label: {
                        Text(animal.name)
                    })
                    .foregroundColor(.accent)
                }
            }
        }
    }
}

#Preview {
    ExternalWebLink(animal: Animal.sampleAnimal)
}
