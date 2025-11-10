//
//  InquiryContactList.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct InquiryContactListView: View {
    @Binding var selectedTab: Int // 親から渡されるselectedTab
    
    // サンプルデータ（displayOrderの昇順でソート）
    let inquiryContacts: [InquiryContact] = InquiryContacts.items.sorted { $0.displayOrder < $1.displayOrder }
    
    init(selectedTab: Binding<Int>) {
        self._selectedTab = selectedTab
    }
    
    var body: some View {
        NavigationView {
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
                
                // 問い合わせ先リスト
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(inquiryContacts) { inquiryContact in
                            NavigationLink(destination: InquiryTopicListView(inquiryContact: inquiryContact)) {
                                InquiryRowView(inquiryContact: inquiryContact)
                            }
                            Divider()
                                .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationBarHidden(true)
    }
}

struct InquiryRowView: View {
    let inquiryContact: InquiryContact
    
    var body: some View {
        HStack(alignment: .top, spacing: 4) {
            // 左側のアイコン
            Image(systemName: "questionmark.circle.fill")
                .font(.system(size: 24))
                .foregroundColor(Color.WPBlue._700)
                .frame(width: 32, alignment: .leading)
            
            // 中央のテキスト情報
            VStack(alignment: .leading, spacing: 4) {
                Text(inquiryContact.title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text(inquiryContact.description)
                    .font(.system(size: 12))
                    .foregroundColor(Color.WPGray._800)
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color.white)
    }
}

#Preview {
    struct PreviewWrapper: View {
        @State private var selectedTab = 2
        
        var body: some View {
            TabBarContainerView(selectedTab: $selectedTab) {
                InquiryContactListView(selectedTab: $selectedTab)
            }
        }
    }
    return PreviewWrapper()
}

