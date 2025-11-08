//
//  TopView.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct TopView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabBarContainerView(selectedTab: $selectedTab) {
            Spacer()
            
            Text("トップ画面")
                .font(.title)
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    TopView()
}
