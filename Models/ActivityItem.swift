//
//  ActivityItem.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

enum ActivityStatus: String {
    case unanswered = "未回答"
    case unconfirmed = "未確認"
    case reportUnread = "ご報告(未読)"
    case reproposalUnanswered = "[再提案]未回答"
    case answeredYes = "回答済み - はい"
    case confirmed = "確認済み"
    case reportRead = "ご報告(既読)"
    case answeredNo = "回答済み - いいえ"
    case rejected = "却下"
    case canceled = "中止"
    case deleted = "削除"
    
    var color: (red: Double, green: Double, blue: Double) {
        switch self {
        case .unanswered, .unconfirmed, .reportUnread, .reproposalUnanswered:
            return (0.44, 0.58, 0.91) // 青
        case .answeredYes, .confirmed, .reportRead:
            return (0.11, 0.64, 0.18) // 緑
        case .answeredNo, .rejected:
            return (0.86, 0.30, 0.12) // オレンジ
        case .canceled, .deleted:
            return (0.63, 0.63, 0.63) // グレー
        }
    }
}

struct ActivityItem: Identifiable {
    let id = UUID()
    let status: ActivityStatus
    let title: String
    let propertyName: String
    let roomNumber: String
    let messagePreview: String
    let date: String
    let hasUnreadDot: Bool
}

