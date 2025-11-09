//
//  ActivityList.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct ActivityListView: View {
    @State private var selectedTab = 3
    
    var body: some View {
        TabBarContainerView(selectedTab: $selectedTab) {
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
                }
                
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
        .onAppear {
            selectedTab = 3
        }
    }
}

struct SectionHeaderView: View {
    let title: String
    let badge: Int?
    
    var body: some View {
        HStack(spacing: 4) {
            Text(title)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(badge != nil ? Color(red: 0.15, green: 0.15, blue: 0.15) : Color(red: 0.48, green: 0.48, blue: 0.48))
            
            if let badge = badge {
                Text("\(badge)")
                    .font(.system(size: 11, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.horizontal, 4)
                    .padding(.vertical, 2)
                    .background(Color(red: 0.87, green: 0.25, blue: 0.18))
                    .cornerRadius(40)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .overlay(
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85)),
            alignment: .bottom
        )
    }
}

struct ActivityRowView: View {
    let item: ActivityItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .top, spacing: 10) {
                // ステータスバッジ
                Text(item.status.rawValue)
                    .font(.system(size: 11, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color(
                        red: item.status.color.red,
                        green: item.status.color.green,
                        blue: item.status.color.blue
                    ))
                    .cornerRadius(40)
                
                Spacer()
                
                // 日時と未読ドット
                HStack(spacing: 4) {
                    Text(item.date)
                        .font(.system(size: 10))
                        .foregroundColor(Color(red: 0.63, green: 0.63, blue: 0.63))
                    
                    if item.hasUnreadDot {
                        Circle()
                            .fill(Color(red: 0.96, green: 0.33, blue: 0.26))
                            .frame(width: 10, height: 10)
                    }
                }
            }
            
            if !item.title.isEmpty {
                Text(item.title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                    .padding(.top, 4)
            }
            
            if !item.propertyName.isEmpty {
                HStack(spacing: 4) {
                    Text(item.propertyName)
                        .font(.system(size: 13))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                    Text(item.roomNumber)
                        .font(.system(size: 13))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                }
                .padding(.top, 4)
            }
            
            Text(item.messagePreview)
                .font(.system(size: 13))
                .foregroundColor(Color(red: 0.48, green: 0.48, blue: 0.48))
                .lineLimit(2)
                .padding(.top, 4)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            item.status == .deleted ? Color(red: 0.91, green: 0.91, blue: 0.91) :
            (item.status == .unanswered || item.status == .unconfirmed || 
             item.status == .reportUnread || item.status == .reproposalUnanswered ?
             Color(red: 0.94, green: 0.97, blue: 1) : Color.white)
        )
        .overlay(
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85)),
            alignment: .bottom
        )
    }
}

#Preview {
    ActivityListView()
}

