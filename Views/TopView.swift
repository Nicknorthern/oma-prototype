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
            VStack(spacing: 0) {
                // ヘッダー
                HStack {
                    Spacer()
                    Text("保有物件")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "gearshape")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color.black)
                
                Spacer()
            }
        }
        .onAppear {
            hideTabBar = false
        }
    }
}

#Preview {
    TopView()
}
