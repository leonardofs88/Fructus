//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Leonardo Soares on 11/05/24.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            } //: HSTACK
            .font(.footnote)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
