//
//  InquiryMessage.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

enum MessageSenderType {
    case user
    case staff
}

struct InquiryMessage: Identifiable {
    let id: UUID
    let topicId: UUID // どのトピックに紐づくか
    let senderType: MessageSenderType // 送信者の種類（ユーザー or スタッフ）
    let content: String // メッセージ内容
    let time: String // 送信時刻
    let senderName: String? // 送信者名（スタッフの場合）
    
    init(id: UUID = UUID(), topicId: UUID, senderType: MessageSenderType, content: String, time: String, senderName: String?) {
        self.id = id
        self.topicId = topicId
        self.senderType = senderType
        self.content = content
        self.time = time
        self.senderName = senderName
    }
}

