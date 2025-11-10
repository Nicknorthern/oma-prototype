//
//  InquiryTopic.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

struct InquiryTopic: Identifiable {
    let id: UUID
    let inquiryContactId: Int // どのInquiryContactに紐づくか
    let inquiryNumber: Int // お問い合わせ番号（8桁の数字）
    let title: String // トピックのタイトル（最初のメッセージの内容など）
    let createdAt: String // 作成日時
    let isClosed: Bool // クローズされているか
    let canClose: Bool // ユーザーがクローズ可能か（管理会社がクローズ可能かどうか）
    let latestMessagePreview: String? // 最新メッセージのプレビュー
    let latestMessageTime: String? // 最新メッセージの時刻
    
    // お問い合わせ番号を表示用の文字列に変換（(#00000001)形式）
    var formattedInquiryNumber: String {
        return "(#\(String(format: "%08d", inquiryNumber)))"
    }
    
    init(id: UUID = UUID(), inquiryContactId: Int, inquiryNumber: Int, title: String, createdAt: String, isClosed: Bool, canClose: Bool, latestMessagePreview: String?, latestMessageTime: String?) {
        self.id = id
        self.inquiryContactId = inquiryContactId
        self.inquiryNumber = inquiryNumber
        self.title = title
        self.createdAt = createdAt
        self.isClosed = isClosed
        self.canClose = canClose
        self.latestMessagePreview = latestMessagePreview
        self.latestMessageTime = latestMessageTime
    }
}

