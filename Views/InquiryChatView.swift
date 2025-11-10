//
//  InquiryChatView.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct InquiryChatView: View {
    let topic: InquiryTopic
    @State private var messages: [InquiryMessage] = []
    @State private var messageText = ""
    @State private var canPost = true
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 0) {
            // カスタムヘッダー（黒背景、白文字、バックボタン）
            ZStack {
                // 中央のタイトルと問い合わせ番号
                VStack(spacing: 2) {
                    Text(topic.title)
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                        .lineLimit(1)
                    
                    Text(topic.formattedInquiryNumber)
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(.white)
                }
                
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
            
            // メッセージリスト
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(messages) { message in
                        MessageBubbleView(message: message)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 16)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
            
            // メッセージ入力欄
            if topic.isClosed {
                // クローズ済みの場合
                HStack {
                    Text("このトピックはクローズされています。参照のみ可能です。")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                }
                .frame(maxWidth: .infinity)
                .background(Color.white)
            } else {
                // 投稿可能な場合
                HStack(spacing: 12) {
                    TextField("メッセージを入力", text: $messageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        sendMessage()
                    }) {
                        Image(systemName: "paperplane.fill")
                            .font(.system(size: 20))
                            .foregroundColor(messageText.isEmpty ? Color.gray : Color(red: 0.87, green: 0.25, blue: 0.18))
                    }
                    .disabled(messageText.isEmpty)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color.white)
            }
            
            // クローズリクエストボタン（未クローズの場合のみ）
            if !topic.isClosed && topic.canClose {
                Button(action: {
                    // クローズリクエスト処理
                }) {
                    Text("クローズしてもいいです")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.87, green: 0.25, blue: 0.18))
                        .padding(.vertical, 8)
                }
                .frame(maxWidth: .infinity)
                .background(Color.white)
            }
        }
        .navigationBarHidden(true)
        .onAppear {
            loadMessages()
            canPost = !topic.isClosed
        }
    }
    
    func loadMessages() {
        // 新規問い合わせ（latestMessagePreviewがnil）の場合はメッセージを空にする
        if topic.latestMessagePreview == nil {
            messages = []
            return
        }
        
        // 実際の実装では、topic.idでメッセージを取得
        // サンプルデータを使用（最初の4つのメッセージを表示）
        let sampleMessages = InquiryMessages.sampleMessages.prefix(4)
        messages = Array(sampleMessages.map { message in
            InquiryMessage(
                topicId: topic.id,
                senderType: message.senderType,
                content: message.content,
                time: message.time,
                senderName: message.senderName
            )
        })
    }
    
    func sendMessage() {
        guard !messageText.isEmpty else { return }
        
        let newMessage = InquiryMessage(
            topicId: topic.id,
            senderType: .user,
            content: messageText,
            time: formatCurrentTime(),
            senderName: nil
        )
        
        messages.append(newMessage)
        messageText = ""
    }
    
    func formatCurrentTime() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日 HH:mm"
        formatter.locale = Locale(identifier: "ja_JP")
        return formatter.string(from: Date())
    }
}

struct MessageBubbleView: View {
    let message: InquiryMessage
    
    var body: some View {
        HStack {
            if message.senderType == .user {
                Spacer()
            }
            
            VStack(alignment: message.senderType == .user ? .trailing : .leading, spacing: 4) {
                if message.senderType == .staff, let senderName = message.senderName {
                    Text(senderName)
                        .font(.system(size: 10))
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                }
                
                Text(message.content)
                    .font(.system(size: 14))
                    .foregroundColor(message.senderType == .user ? .white : .black)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .background(
                        message.senderType == .user
                            ? Color.WPBlue._700
                            : Color.white
                    )
                    .cornerRadius(16)
                
                Text(message.time)
                    .font(.system(size: 10))
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
            }
            .frame(maxWidth: 280, alignment: message.senderType == .user ? .trailing : .leading)
            
            if message.senderType == .staff {
                Spacer()
            }
        }
    }
}

#Preview {
    NavigationView {
        InquiryChatView(topic: InquiryTopics.sampleTopics[0])
    }
}

