//
//  HomeView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView {
            // 1. ContentView
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            
            // 2. VideoView
            VideoView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("비디오")
                }
            
            // 3. GalleryView
            GalleryView()
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
