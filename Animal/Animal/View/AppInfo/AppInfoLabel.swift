//
//  AppInfoLabel.swift
//  Animal
//
//  Created by sonjuhyeong on 6/10/24.
//

import SwiftUI

struct AppInfoLabel: View {
    
    // Property
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            Image(systemName: labelImage)
                .hTrailing()
        }
    }
}

#Preview {
    AppInfoLabel(labelText: "AppInfoHead", labelImage: "gear")
}
