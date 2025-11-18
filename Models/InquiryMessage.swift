//
//  InquiryMessage.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

enum MessageSenderType {
    case owner
    case staff
}

struct InquiryMessage: Identifiable {
    let id: Int // メッセージID
    let topicId: Int // どのトピックに紐づくか
    let senderType: MessageSenderType // 送信者の種類（オーナー or スタッフ）
    let content: String // メッセージ内容
    let time: String // 送信時刻
    let senderId: Int // 送信者ID（オーナーID or スタッフID）
    
    init(id: Int, topicId: Int, senderType: MessageSenderType, content: String, time: String, senderId: Int) {
        self.id = id
        self.topicId = topicId
        self.senderType = senderType
        self.content = content
        self.time = time
        self.senderId = senderId
    }
}

