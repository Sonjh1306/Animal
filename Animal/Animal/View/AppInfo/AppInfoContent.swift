//
//  AppInfoContent.swift
//  Animal
//
//  Created by sonjuhyeong on 6/10/24.
//

import SwiftUI

struct AppInfoContent: View {
    
    // Property
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 5)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                
                if content != nil {
                    Text(content ?? "")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .hTrailing()
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(destination: URL(string: linkDestination ?? "")!, label: {
                        
                        Spacer()
                        
                        Text(linkLabel ?? "")
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    })
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.accentColor)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Group {
        AppInfoContent(name: "Sample", content: "haha")
        AppInfoContent(name: "Sample2", linkLabel: "haha", linkDestination: "asdfasf")
    }
}
