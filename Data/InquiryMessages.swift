//
//  InquiryMessages.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

struct InquiryMessages {
    // サンプルメッセージデータ
    // 実際の実装では、topicIdでフィルタリングします
    static let sampleMessages: [InquiryMessage] = [
        // トピック1のメッセージ（契約書の内容について確認したい）
        InquiryMessage(
            topicId: UUID(), // 実際にはトピックのIDと一致させる
            senderType: .user,
            content: "契約書の内容について確認したいことがあります。特に、物件の引き渡し時期について詳しく教えていただけますか？",
            time: "2025年11月1日 10:30",
            senderName: nil
        ),
        InquiryMessage(
            topicId: UUID(),
            senderType: .staff,
            content: "お問い合わせありがとうございます。引き渡し時期について、契約書の第3条に記載されております。",
            time: "2025年11月1日 11:15",
            senderName: "田中（営業事務）"
        ),
        InquiryMessage(
            topicId: UUID(),
            senderType: .user,
            content: "ありがとうございます。確認しました。追加で、原状回復の範囲についても教えていただけますか？",
            time: "2025年11月1日 13:45",
            senderName: nil
        ),
        InquiryMessage(
            topicId: UUID(),
            senderType: .staff,
            content: "承知いたしました。契約書の内容について確認いたします。",
            time: "2025年11月1日 14:20",
            senderName: "田中（営業事務）"
        ),
        // トピック2のメッセージ（手付金の返還について）- クローズ済み
        InquiryMessage(
            topicId: UUID(),
            senderType: .user,
            content: "手付金の返還について相談したいです。",
            time: "2025年10月25日 09:15",
            senderName: nil
        ),
        InquiryMessage(
            topicId: UUID(),
            senderType: .staff,
            content: "手付金の返還について、契約解除の理由を確認させていただきます。",
            time: "2025年10月25日 10:00",
            senderName: "佐藤（営業事務）"
        ),
        InquiryMessage(
            topicId: UUID(),
            senderType: .user,
            content: "売主の都合で契約を解除することになりました。",
            time: "2025年10月25日 14:30",
            senderName: nil
        ),
        InquiryMessage(
            topicId: UUID(),
            senderType: .staff,
            content: "承知いたしました。手付金の返還手続きを進めさせていただきます。",
            time: "2025年10月26日 09:00",
            senderName: "佐藤（営業事務）"
        ),
        InquiryMessage(
            topicId: UUID(),
            senderType: .staff,
            content: "手付金の返還手続きが完了いたしました。",
            time: "2025年10月28日 16:45",
            senderName: "佐藤（営業事務）"
        )
    ]
    
    // topicIdでメッセージを取得する関数
    static func messages(for topicId: UUID) -> [InquiryMessage] {
        return sampleMessages.filter { $0.topicId == topicId }
    }
}

