//
//  StartButtonView.swift
//  Fructus
//
//  Created by Leonardo Soares on 09/05/24.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .tint(Color.white)
    }
}

// MARK: - PREVIEW
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
