//
//  SettingsView.swift
//  Fructus
//
//  Created by Leonardo Soares on 09/06/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox {
                        HStack(alignment: .center, spacing: 10, content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        })
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        Divider().padding(.vertical, 4)
                    } //: BOX

                    // MARK: - SECTION 2
                    GroupBox {
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        )
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                        Divider().padding(.vertical, 4)
                    }
                    
                    // MARK: - SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "John/Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestinatnion: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@LeonardoSoares", linkDestinatnion: "twitter.com/leonardoSoares")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }
                } //: VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
            } //: SCROLLVIEW
        } //NAVIGATIONSTACK
    }
}


// MARK: - PREVIEW
#Preview {
    SettingsView()
}
