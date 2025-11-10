//
//  MainTabView.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabBarContainerView(selectedTab: $selectedTab) {
            Group {
                switch selectedTab {
                case 0:
                    TopViewContent()
                case 1:
                    ChatTopicsContent()
                case 2:
                    InquiryContactListView(selectedTab: $selectedTab)
                case 3:
                    ActivityListContent()
                case 4:
                    NotificationContent()
                default:
                    TopViewContent()
                }
            }
        }
    }
}

// 各タブのコンテンツを分離
struct TopViewContent: View {
    var body: some View {
        Spacer()
        Text("トップ画面")
            .font(.title)
            .padding()
        Spacer()
    }
}

struct ChatTopicsContent: View {
    let topics: [TopicItem] = Topics.items
    
    var body: some View {
        VStack(spacing: 0) {
            // ヘッダー
            HStack {
                Spacer()
                Text("チャット")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color.black)
            
            // トピックリスト
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(topics) { topic in
                        TopicRowView(topic: topic)
                        Divider()
                            .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                    }
                }
            }
            .background(Color.white)
        }
    }
}

struct InquiryContent: View {
    let inquiries: [InquiryContact] = InquiryContacts.items
    
    var body: some View {
        VStack(spacing: 0) {
            // ヘッダー
            HStack {
                Spacer()
                Text("お問い合わせ")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color.black)
            
            // トピックリスト
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(inquiries) { inquiryContact in
                        InquiryRowView(inquiryContact: inquiryContact)
                        Divider()
                            .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                    }
                }
            }
            .background(Color.white)
        }
    }
}

struct ActivityListContent: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(spacing: 0) {
                // ヘッダー
                HStack {
                    Spacer()
                    Text("確認リスト")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color.black)
                
                // メインコンテンツ
                ScrollView {
                    VStack(spacing: 0) {
                        // セクション1: 確認・回答が必要
                        SectionHeaderView(
                            title: "確認・回答が必要",
                            badge: Activities.pendingItems.count
                        )
                        
                        ForEach(Activities.pendingItems) { item in
                            ActivityRowView(item: item)
                        }
                        
                        // セクション2: 確認・回答済み他
                        SectionHeaderView(
                            title: "確認・回答済み他",
                            badge: nil
                        )
                        
                        ForEach(Activities.completedItems) { item in
                            ActivityRowView(item: item)
                        }
                    }
                }
                .background(Color.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            // フローティングアクションボタン
            Button(action: {}) {
                Text("絞り込み")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 12)
                    .background(Color.black)
                    .cornerRadius(100)
                    .shadow(color: Color.black.opacity(0.24), radius: 16, y: 2)
            }
            .padding(.trailing, 20)
            .padding(.bottom, 20)
        }
    }
}

struct NotificationContent: View {
    var body: some View {
        Spacer()
        Text("お知らせ")
            .font(.title)
            .padding()
        Spacer()
    }
}

#Preview {
    struct PreviewWrapper: View {
        var body: some View {
            MainTabView()
        }
    }
    return PreviewWrapper()
}

