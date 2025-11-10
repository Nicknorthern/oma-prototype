//
//  ChatTopicList.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct ChatTopicListView: View {
    @State private var selectedTab = 1
    
    // サンプルデータ
    let topics: [ChatTopic] = ChatTopics.items
    
    var body: some View {
        TabBarContainerView(selectedTab: $selectedTab) {
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
        .onAppear {
            selectedTab = 1
        }
    }
}

struct TopicRowView: View {
    let topic: ChatTopic
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            // 左側のアイコン
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 48, height: 48)
                    .overlay(
                        Circle()
                            .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                    )
                
                VStack(spacing: 2) {
                    Image(systemName: "building.2")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                    Text("東京不動産")
                        .font(.system(size: 8))
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                }
            }
            .frame(width: 48, height: 48)
            
            // 中央のテキスト情報
            VStack(alignment: .leading, spacing: 4) {
                Text(topic.title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.black)
                
                Text(topic.companyName)
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                
                Text(topic.ownerName)
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                
                Text(topic.messagePreview)
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                    .lineLimit(1)
            }
            
            Spacer()
            
            // 右側の日付
            Text(topic.date)
                .font(.system(size: 12))
                .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color.white)
    }
}

#Preview {
    ChatTopicListView()
}

