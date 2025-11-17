//
//  InquiryTopic.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

struct InquiryTopic: Identifiable {
    let id: Int // お問い合わせ番号（ID）
    let ownerId: Int // オーナーID
    let inquiryContactId: Int // どのInquiryContactに紐づくか
    let title: String // トピックのタイトル（最初のメッセージの内容など）
    let createdAt: String // 作成日時
    let isClosed: Bool // クローズされているか
    let canClose: Bool // ユーザーがクローズ可能か（管理会社がクローズ可能かどうか）
    let latestMessagePreview: String? // 最新メッセージのプレビュー
    let latestMessageTime: String? // 最新メッセージの時刻
    
    // お問い合わせ番号を表示用の文字列に変換（(#00000001)形式）
    var formattedInquiryNumber: String {
        return "(#\(String(format: "%08d", id)))"
    }
    
    init(id: Int, ownerId: Int, inquiryContactId: Int, title: String, createdAt: String, isClosed: Bool, canClose: Bool, latestMessagePreview: String?, latestMessageTime: String?) {
        self.id = id
        self.ownerId = ownerId
        self.inquiryContactId = inquiryContactId
        self.title = title
        self.createdAt = createdAt
        self.isClosed = isClosed
        self.canClose = canClose
        self.latestMessagePreview = latestMessagePreview
        self.latestMessageTime = latestMessageTime
    }
}

