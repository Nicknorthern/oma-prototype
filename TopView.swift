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
        VStack(spacing: 0) {
            // メインコンテンツエリア
            Spacer()
            
            Text("トップ画面")
                .font(.title)
                .padding()
            
            Spacer()
            
            // フッターメニュー
            BottomTabBar(selectedTab: $selectedTab)
        }
        .background(Color.white)
    }
}

struct BottomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack(spacing: 0) {
            TabButton(
                icon: "chart.line.uptrend.xyaxis",
                title: "保有資産",
                badge: nil,
                isSelected: selectedTab == 0,
                action: { selectedTab = 0 }
            )
            
            TabButton(
                icon: "chart.bar.fill",
                title: "投資",
                badge: nil,
                isSelected: selectedTab == 1,
                action: { selectedTab = 1 }
            )
            
            TabButton(
                icon: "message.fill",
                title: "チャット",
                badge: 3,
                isSelected: selectedTab == 2,
                action: { selectedTab = 2 }
            )
            
            TabButton(
                icon: "checkmark.circle.fill",
                title: "確認リスト",
                badge: 3,
                isSelected: selectedTab == 3,
                action: { selectedTab = 3 }
            )
            
            TabButton(
                icon: "bell.fill",
                title: "お知らせ",
                badge: nil,
                isSelected: selectedTab == 4,
                action: { selectedTab = 4 }
            )
        }
        .padding(.horizontal, 12)
        .frame(maxWidth: .infinity)
        .frame(height: 60)
        .background(Color.black)
    }
}

struct TabButton: View {
    let icon: String
    let title: String
    let badge: Int?
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                ZStack {
                    Image(systemName: icon)
                        .font(.system(size: 20))
                        .foregroundColor(isSelected ? .white : Color(red: 0.48, green: 0.48, blue: 0.48))
                    
                    if let badge = badge {
                        Text("\(badge)")
                            .font(.system(size: 10, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.horizontal, 4)
                            .padding(.vertical, 2)
                            .background(Color(red: 0.87, green: 0.25, blue: 0.18))
                            .cornerRadius(10)
                            .offset(x: 12, y: -12)
                    }
                }
                .frame(width: 28, height: 28)
                
                Text(title)
                    .font(.system(size: 11, weight: .bold))
                    .foregroundColor(isSelected ? .white : Color(red: 0.48, green: 0.48, blue: 0.48))
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    TopView()
}
