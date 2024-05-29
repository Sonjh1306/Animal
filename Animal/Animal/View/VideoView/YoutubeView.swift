//
//  YoutubeView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/29/24.
//

import SwiftUI
import WebKit

struct YoutubeView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
        uiView.allowsLinkPreview = true
    }
}
