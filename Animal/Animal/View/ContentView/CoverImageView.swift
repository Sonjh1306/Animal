//
//  CoverImageView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/28/24.
//

import SwiftUI

struct CoverImageView: View {
    
    @ObservedObject var viewModel: AnimalViewModel
    
    var body: some View {
        TabView {
            ForEach(viewModel.coverImages) { (image) in
                Image(image.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    CoverImageView(viewModel: AnimalViewModel())
        .previewLayout(.fixed(width: 400, height: 300))
}
