//
//  DetailView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/28/24.
//

import SwiftUI

struct DetailView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // 1. HeadImage
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // 2. Title
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 10)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 25)
                    )
                
                // 3. HeadLine
                Text(animal.headline)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.accentColor)
                    .padding()
                
                // 4. Gallery
                Group {
                    DetailHeadView(headingImage: "photo.on.rectangle.angled", headingText: "\(animal.name) 사진들")
                    
                    DetailGalleryView(animal: animal)
                }
                
                // 5. Description
                Group {
                    DetailHeadView(headingImage: "info.circle", headingText: "자세한 정보")
                    
                    Text(animal.description)
                        .font(.subheadline)
                        .padding(.horizontal, 10)
                }
                
                // 6. Fact
                Group {
                    DetailHeadView(headingImage: "location.magnifyingglass", headingText: "팩트")
                    
                    DetailFactView(animal: animal)
                }
                
                // 7. Fact
                Group {
                    DetailHeadView(headingImage: "books.vertical", headingText: "참고 자료")
                    ExternalWebLink(animal: animal)
                }
                
                // 8. Copyright
                Text(animal.copyright)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
            }
            .navigationBarTitle("\(animal.name) 자세히 알아보기", displayMode: .inline)
        }
    }
}

#Preview {
    DetailView(animal: Animal.sampleAnimal)
}
