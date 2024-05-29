//
//  VideoPlayerView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/29/24.
//

import SwiftUI

struct VideoPlayerView: View {
    
    let video: Video
    
    var body: some View {
        NavigationView(content: {
            VStack {
                YoutubeView(videoID: video.videoid)
            }
            .navigationBarTitle("\(video.name)", displayMode: .inline)
        })
    }
}

#Preview {
    VideoPlayerView(video: .sampleVideoData)
}
