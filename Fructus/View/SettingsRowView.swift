//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Leonardo Soares on 09/06/24.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestinatnion: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundStyle(Color.gray)
                Spacer()
                if let content {
                    Text(content)
                } else if let linkLabel, let linkDestinatnion {
                    Link(destination: URL(string: "https://\(linkDestinatnion)")!, label: {
                        Text(linkLabel)
                    })
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(Color.pink)
                }
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    Group {
        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass",linkDestinatnion: "swiftuimasterclass.com")
            .previewLayout(.fixed(width: 375, height: 60))
        .padding()
        
        SettingsRowView(name: "Developer", content: "Jhon / Jane")
            .preferredColorScheme(.light)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
