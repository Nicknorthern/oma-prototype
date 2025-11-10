//
//  TopView.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct TopView: View {
    @State private var selectedTab = 0
    @State private var hideTabBar = false
    
    var body: some View {
        TabBarContainerView(selectedTab: $selectedTab, hideTabBar: $hideTabBar) {
            Spacer()
            
            Text("トップ画面")
                .font(.title)
                .padding()
            
            Spacer()
        }
        .onAppear {
            hideTabBar = false
        }
    }
}

#Preview {
    TopView()
}
