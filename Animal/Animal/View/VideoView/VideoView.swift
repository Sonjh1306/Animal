//
//  VideoView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct VideoView: View {
    
    @ObservedObject var viewModel: AnimalViewModel
    
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(viewModel.videos) { (video) in
                    NavigationLink {
                        VideoPlayerView(video: video)
                    } label: {
                        VideoListItem(video: video)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("비디오", displayMode: .inline)
        })
    }
}

#Preview {
    VideoView(viewModel: AnimalViewModel())
}
