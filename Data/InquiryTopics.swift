//
//  InquiryTopics.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

struct InquiryTopics {
    // サンプルデータ: 最初のInquiryContactItem（売買契約の内容にかかわること）に関連するトピック
    // 実際の実装では、inquiryIdでフィルタリングします
    static let sampleTopics: [InquiryTopic] = [
        InquiryTopic(
            inquiryId: UUID(), // 実際にはInquiryContactItemのIDと一致させる
            inquiryNumber: 1,
            title: "契約書の内容について確認したい",
            createdAt: "2025年11月1日 10:30",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "承知いたしました。契約書の内容について確認いたします。",
            latestMessageTime: "2025年11月1日 14:20"
        ),
        InquiryTopic(
            inquiryId: UUID(),
            inquiryNumber: 2,
            title: "手付金の返還について",
            createdAt: "2025年10月25日 09:15",
            isClosed: true,
            canClose: false,
            latestMessagePreview: "手付金の返還手続きが完了いたしました。",
            latestMessageTime: "2025年10月28日 16:45"
        ),
        InquiryTopic(
            inquiryId: UUID(),
            inquiryNumber: 3,
            title: "契約解除の条件について",
            createdAt: "2025年10月20日 11:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "契約解除の条件について、詳細を確認させていただきます。",
            latestMessageTime: "2025年10月20日 15:30"
        )
    ]
    
    // inquiryIdでトピックを取得する関数
    static func topics(for inquiryId: UUID) -> [InquiryTopic] {
        return sampleTopics.filter { $0.inquiryId == inquiryId }
    }
}

