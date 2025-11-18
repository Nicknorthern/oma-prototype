//
//  TabBarContainerView.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

private struct HideTabBarKey: EnvironmentKey {
    static let defaultValue: Binding<Bool> = .constant(false)
}

extension EnvironmentValues {
    var hideTabBar: Binding<Bool> {
        get { self[HideTabBarKey.self] }
        set { self[HideTabBarKey.self] = newValue }
    }
}

struct TabBarContainerView<Content: View>: View {
    @Binding var selectedTab: Int
    @Binding var hideTabBar: Bool
    let content: Content
    
    init(selectedTab: Binding<Int>, hideTabBar: Binding<Bool>, @ViewBuilder content: () -> Content) {
        self._selectedTab = selectedTab
        self._hideTabBar = hideTabBar
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // メインコンテンツエリア
            content
                .environment(\.hideTabBar, $hideTabBar)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            // フッターメニュー
            if !hideTabBar {
                BottomTabBar(selectedTab: $selectedTab)
            }
        }
        .background(Color.white)
    }
}

#Preview {
    struct PreviewWrapper: View {
        @State private var selectedTab = 0
        
        var body: some View {
            TabBarContainerView(selectedTab: $selectedTab, hideTabBar: .constant(false)) {
                Spacer()
                
                Text("プレビュー用コンテンツ")
                    .font(.title)
                    .padding()
                
                Spacer()
            }
        }
    }
    
    return PreviewWrapper()
}

struct BottomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack(spacing: 0) {
            TabButton(
                icon: nil,
                customImageName: "donut_large",
                title: "保有物件",
                badge: nil,
                isSelected: selectedTab == 0,
                action: { selectedTab = 0 }
            )
            
            TabButton(
                icon: nil,
                customImageName: "chat",
                title: "チャット",
                badge: nil,
                isSelected: selectedTab == 1,
                action: { selectedTab = 1 }
            )
            
            TabButton(
                icon: "questionmark.circle.fill",
                customImageName: nil,
                title: "お問い合せ",
                badge: 3,
                isSelected: selectedTab == 2,
                action: { selectedTab = 2 }
            )
            
            TabButton(
                icon: "checkmark.circle.fill",
                customImageName: nil,
                title: "確認リスト",
                badge: 3,
                isSelected: selectedTab == 3,
                action: { selectedTab = 3 }
            )
            
            TabButton(
                icon: "bell.fill",
                customImageName: nil,
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
    let icon: String?
    let customImageName: String?
    let title: String
    let badge: Int?
    let isSelected: Bool
    let action: () -> Void
    
    init(icon: String?, customImageName: String? = nil, title: String, badge: Int?, isSelected: Bool, action: @escaping () -> Void) {
        self.icon = icon
        self.customImageName = customImageName
        self.title = title
        self.badge = badge
        self.isSelected = isSelected
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                ZStack {
                    if let customImageName = customImageName {
                        Image(customImageName)
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(isSelected ? .white : Color(red: 0.48, green: 0.48, blue: 0.48))
                    } else if let icon = icon {
                        Image(systemName: icon)
                            .font(.system(size: 20))
                            .foregroundColor(isSelected ? .white : Color(red: 0.48, green: 0.48, blue: 0.48))
                    }
                    
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

