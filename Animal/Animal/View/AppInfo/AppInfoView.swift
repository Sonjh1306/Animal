//
//  AppInfoView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {
        NavigationView(content: {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // 1. Application
                    GroupBox(label: AppInfoLabel(labelText: "Application", labelImage: "apps.iphone"), content: {
                        AppInfoContent(name: "Developer", content: "Juhyeong Son")
                        AppInfoContent(name: "Compatibility", content: "14.0")
                        AppInfoContent(name: "Version", content: "1.0.0")
                        AppInfoContent(name: "Website", linkLabel: "Juhyeong's DevLog", linkDestination: "asdfasdf")
                        AppInfoContent(name: "Github", linkLabel: "Go to Repository", linkDestination: "asdfasdf")
                    })
                    .padding(.vertical)
                    
                    
                    // 2. Copyright
                    GroupBox(label: AppInfoLabel(labelText: "Copyright", labelImage: "c.circle"), content: {
                        Divider().padding(.vertical, 5)
                        
                        HStack(spacing: 10) {
                            Image("copyright")
                                .resizable()
                                .scaledToFit()
                                .frame(width: CGFloat.screenWidth * 0.3)
                            
                            Text("저작권법 제24조의2(공공저작물의 자유이용)에 따라 한국문화정보원에서 저작재산권의 전부를 보유하고 있거나 자유이용허락표시에 대한 권리자의 동의를 받은 경우는 '공공저작물 자유이용허락표시기준(공공누리, KOGL)'을 부착하여 별도의 이용허락 없이 자유이용이 가능합니다.")
                                .font(.footnote)
                                .hTrailing()
                        }
                        
                        Divider().padding(.vertical, 5)
                        
                        HStack(spacing: 10) {
                            Image("AppIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            
                            Spacer()
                            
                            Link(destination: URL(string: "https://www.freepik.com/vectors/animal-face")!, label: {
                                Text("Animal face vector created by grmarc - www.freepik.com")
                                    .font(.footnote)
                                Image(systemName: "arrow.up.right.square")
                                    .foregroundColor(.accentColor)
                                    .font(.footnote)
                            })
                        }
                        
                        // 3. Splash Copyright
                        Divider().padding(.vertical, 5)
                        
                        HStack(spacing: 10) {
                            Image("splash")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                            
                            Spacer()
                            
                            Link(destination: URL(string: "https://icons8.com/illustrations/author/5c07e68d82bcbc0092519bb")!, label: {
                                Text("Illustrations by Icons 8 from Ounch!")
                                    .font(.footnote)
                                Image(systemName: "arrow.up.right.square")
                                    .foregroundColor(.accentColor)
                                    .font(.footnote)
                            })
                        }
                    })
                    
                    
                    
                    
                }
                .padding()
            }
            .navigationTitle("앱 정보")
        })
    }
}

#Preview {
    AppInfoView()
}
