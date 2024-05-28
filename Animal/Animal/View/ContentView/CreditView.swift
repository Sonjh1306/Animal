//
//  CreditView.swift
//  Animal
//
//  Created by sonjuhyeong on 5/28/24.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack {
            Text("""
    Copyright Juhyeong Son
    All right reserved
    Create by Animal
""")
            .font(.footnote)
            .multilineTextAlignment(.center)
            .padding()
            .opacity(0.5)
        }
    }
}

#Preview {
    CreditView()
}
