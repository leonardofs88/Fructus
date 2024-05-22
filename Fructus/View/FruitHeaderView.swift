//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Leonardo Soares on 11/05/24.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: fruit.gradientColors),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(height: 440)
    }
}

// MARK: - PREVIEW
#Preview {
    FruitHeaderView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}
