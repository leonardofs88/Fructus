//
//  ContentView.swift
//  Fructus
//
//  Created by Leonardo Soares on 06/05/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSheet: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSheet = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTTON
                    .sheet(isPresented: $isShowingSheet, content: {
                        SettingsView()
                    })

                } //: TOOLBARITEM
            }
        } //: NAVIGATION STACK
    }
}
// MARK: - PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
        .previewDevice("iPhone 15 Pro")
}
