//
//  FruitRowView.swift
//  Fructus
//
//  Created by Leonardo Soares on 11/05/24.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - PROPERTIES
    @State var fruit: Fruit
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original) // avoids image to be colorized
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: fruit.gradientColors),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            })

        } //: HSTACK
    }
}
// MARK: - PREVIEW
#Preview {
    FruitRowView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
