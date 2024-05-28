//
//  ContentView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: AnimalViewModel
    
    var body: some View {
        VStack {
            NavigationView(content: {
                List {
                    // 1. Cover Image - hero image
                    CoverImageView(viewModel: viewModel)
                        .frame(height: CGFloat.screenHeight * 0.4)
                        .listRowInsets(EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 0,
                            trailing: 0
                        )
                    )
                    
                    // 2. Animal List
                    ForEach(viewModel.animals) { (animal) in
                        NavigationLink {
                            DetailView(animal: animal)
                        } label: {
                            AnimalListView(animal: animal)
                                .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                        }
                    }
                    
                    // 3. Credit View
                    CreditView()
                        .hCenter()
                }
                .listStyle(.plain)
                .navigationTitle("멸종 위기 동물들")
            })
        }
    }
}

#Preview {
    ContentView(viewModel: AnimalViewModel())
}
