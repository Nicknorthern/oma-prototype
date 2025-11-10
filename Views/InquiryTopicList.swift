//
//  InquiryTopicList.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

enum TopicFilter: String, CaseIterable {
    case all = "すべて"
    case open = "お問い合わせ中"
    case closed = "解決済み"
}

struct InquiryTopicListView: View {
    let inquiryContact: InquiryContact
    @State private var selectedFilter: TopicFilter = .all
    @State private var topics: [InquiryTopic] = []
    @State private var showingNewTopicSheet = false
    @State private var selectedTopicId: UUID? = nil
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 0) {
            // ヘッダー（黒背景、白文字、バックボタン）
            ZStack {
                // 中央のタイトル
                Text("お問い合わせ")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                
                // 左側のバックボタン
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.white)
                    }
                    .padding(.leading, 16)
                    
                    Spacer()
                }
            }
            .padding(.vertical, 12)
            .background(Color.black)
            
            // タイトルと説明、セグメントコントロール
            VStack(spacing: 12) {
                // タイトルと説明
                VStack(alignment: .leading, spacing: 8) {
                    Text(inquiryContact.title)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                    
                    Text(inquiryContact.description)
                        .font(.system(size: 14))
                        .foregroundColor(Color.WPGray._800)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
                .padding(.top, 16)
                
                // セグメントコントロール
                Picker("フィルター", selection: $selectedFilter) {
                    ForEach(TopicFilter.allCases, id: \.self) { filter in
                        Text(filter.rawValue).tag(filter)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 16)
                .padding(.bottom, 12)
            }
            .background(Color.white)
            
            // トピックリスト
            ScrollView {
                VStack(spacing: 0) {
                    // 新しい問い合わせを開始ボタン
                    Button(action: {
                        showingNewTopicSheet = true
                    }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            Text("新しい問い合わせを開始")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(Color.WPBlue._700) // WPB-Blue/700: #2E6CFF
                        .cornerRadius(8)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 16)
                    
                    // トピックリスト
                    ForEach(filteredTopics) { topic in
                        NavigationLink(
                            destination: InquiryChatView(topic: topic),
                            tag: topic.id,
                            selection: $selectedTopicId
                        ) {
                            InquiryTopicRowView(topic: topic)
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
        .navigationBarHidden(true)
        .onAppear {
            loadTopics()
        }
        .sheet(isPresented: $showingNewTopicSheet) {
            NewTopicView(inquiry: inquiryContact) { newTopic in
                topics.append(newTopic)
                showingNewTopicSheet = false
                // 新規作成されたトピックのIDを設定して自動遷移
                DispatchQueue.main.async {
                    selectedTopicId = newTopic.id
                }
            }
        }
    }
    
    var filteredTopics: [InquiryTopic] {
        switch selectedFilter {
        case .all:
            return topics
        case .open:
            return topics.filter { !$0.isClosed }
        case .closed:
            return topics.filter { $0.isClosed }
        }
    }
    
    func loadTopics() {
        // 実際の実装では、inquiryContact.idでトピックを取得
        // サンプルデータを使用（すべてのトピックを表示）
        topics = InquiryTopics.sampleTopics.map { topic in
            // inquiryContactIdを現在のinquiryContact.idに設定
            InquiryTopic(
                inquiryContactId: inquiryContact.id,
                inquiryNumber: topic.inquiryNumber,
                title: topic.title,
                createdAt: topic.createdAt,
                isClosed: topic.isClosed,
                canClose: topic.canClose,
                latestMessagePreview: topic.latestMessagePreview,
                latestMessageTime: topic.latestMessageTime
            )
        }
    }
}

struct InquiryTopicRowView: View {
    let topic: InquiryTopic
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            // 左側のステータス表示
            VStack(spacing: 4) {
                if topic.isClosed {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                } else {
                    Circle()
                        .stroke(Color.WPBlue._700, lineWidth: 2)
                        .frame(width: 20, height: 20)
                }
            }
            .frame(width: 24)
            
            // 中央のテキスト情報
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 4) {
                    Text(topic.title)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.black)
                    Text(topic.formattedInquiryNumber)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color.WPGray._600)
                }
                
                if let preview = topic.latestMessagePreview {
                    Text(preview)
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                        .lineLimit(1)
                }
                
                if let time = topic.latestMessageTime {
                    Text(time)
                        .font(.system(size: 10))
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                }
            }
            
            Spacer()
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color.white)
    }
}

struct NewTopicView: View {
    let inquiry: InquiryContact // パラメータ名はinquiryのまま（Swiftの命名規則に従う）
    @Environment(\.presentationMode) var presentationMode
    @State private var titleText = ""
    var onTopicCreated: ((InquiryTopic) -> Void)?
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Text("問い合わせのタイトルを入力してください")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.black)
                    .padding(.top, 16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 16)
                
                TextField("タイトルを入力", text: $titleText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                
                Button(action: {
                    // トピック作成処理
                    let inquiryNumber = InquiryNumberManager.shared.getNextInquiryNumber()
                    let formatter = DateFormatter()
                    formatter.dateFormat = "yyyy年MM月dd日 HH:mm"
                    formatter.locale = Locale(identifier: "ja_JP")
                    let now = formatter.string(from: Date())
                    
                    let newTopic = InquiryTopic(
                        inquiryContactId: inquiry.id,
                        inquiryNumber: inquiryNumber,
                        title: titleText.isEmpty ? "新しい問い合わせ" : titleText,
                        createdAt: now,
                        isClosed: false,
                        canClose: true,
                        latestMessagePreview: nil,
                        latestMessageTime: nil
                    )
                    
                    onTopicCreated?(newTopic)
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("お問い合わせを開始")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(titleText.isEmpty ? Color.gray : Color.WPBlue._700)
                        .cornerRadius(8)
                }
                .disabled(titleText.isEmpty)
                .padding(.horizontal, 16)
                
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Button("キャンセル") {
                    presentationMode.wrappedValue.dismiss()
                }
            )
        }
    }
}

#Preview {
    NavigationView {
        InquiryTopicListView(inquiryContact: InquiryContacts.items[0])
    }
}

