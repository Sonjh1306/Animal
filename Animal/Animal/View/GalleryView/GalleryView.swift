//
//  GalleryView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct GalleryView: View {
    
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationView(content: {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 30) {
                    
                    // 1. Image
                    Image(vm.selectedAnimal)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 250)
                        .clipShape(.circle)
                        .overlay(
                            Circle()
                                .stroke(Color.accentColor, lineWidth: 5)
                        )
                    
                    // 2. Slider
                    Slider(value: $vm.gridColumn, in: 2...4, step: 1)
                        .padding(0)
                        .onChange(of: vm.gridColumn, {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                vm.gridSwitch()
                            }
                        })
                        
                    
                    // 3. Grid
                    LazyVGrid(columns: vm.gridLayout, spacing: 20) {
                        ForEach(vm.animals) { (animal) in
                            Image(animal.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(.circle)
                                .overlay(
                                    Circle().stroke(.white, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                )
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        vm.selectedAnimal = animal.image
                                    }
                                }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("갤러리")
            .navigationBarTitleDisplayMode(.inline)
        })
    }
}

#Preview {
    GalleryView(vm: AnimalViewModel())
}
