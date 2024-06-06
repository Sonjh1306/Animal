//
//  HomeView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var viewModel: AnimalViewModel = AnimalViewModel()
    
    var body: some View {
        TabView {
            // 1. ContentView
            ContentView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            
            // 2. VideoView
            VideoView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("비디오")
                }
            
            // 3. GalleryView
            GalleryView(vm: viewModel)
                .tabItem {
                    Image(systemName: "photo")
                    Text("갤러리")
                }
            
            // 4. AppInfoView
            AppInfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("앱정보")
                }
        }
    }
}

#Preview {
    HomeView()
}
