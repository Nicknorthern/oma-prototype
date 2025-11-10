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
            id: 1,
            topicId: 1,
            senderType: .user,
            content: "契約書の内容について確認したいことがあります。特に、物件の引き渡し時期について詳しく教えていただけますか？",
            time: "2025年11月1日 10:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 2,
            topicId: 1,
            senderType: .staff,
            content: "お問い合わせありがとうございます。引き渡し時期について、契約書の第3条に記載されております。",
            time: "2025年11月1日 11:15",
            senderName: "田中（営業事務）"
        ),
        InquiryMessage(
            id: 3,
            topicId: 1,
            senderType: .user,
            content: "ありがとうございます。確認しました。追加で、原状回復の範囲についても教えていただけますか？",
            time: "2025年11月1日 13:45",
            senderName: nil
        ),
        InquiryMessage(
            id: 4,
            topicId: 1,
            senderType: .staff,
            content: "承知いたしました。契約書の内容について確認いたします。",
            time: "2025年11月1日 14:20",
            senderName: "田中（営業事務）"
        ),
        // トピック2のメッセージ（手付金の返還について）- クローズ済み
        InquiryMessage(
            id: 5,
            topicId: 2,
            senderType: .user,
            content: "手付金の返還について相談したいです。",
            time: "2025年10月25日 09:15",
            senderName: nil
        ),
        InquiryMessage(
            id: 6,
            topicId: 2,
            senderType: .staff,
            content: "手付金の返還について、契約解除の理由を確認させていただきます。",
            time: "2025年10月25日 10:00",
            senderName: "佐藤（営業事務）"
        ),
        InquiryMessage(
            id: 7,
            topicId: 2,
            senderType: .user,
            content: "売主の都合で契約を解除することになりました。",
            time: "2025年10月25日 14:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 8,
            topicId: 2,
            senderType: .staff,
            content: "承知いたしました。手付金の返還手続きを進めさせていただきます。",
            time: "2025年10月26日 09:00",
            senderName: "佐藤（営業事務）"
        ),
        InquiryMessage(
            id: 9,
            topicId: 2,
            senderType: .staff,
            content: "手付金の返還手続きが完了いたしました。",
            time: "2025年10月28日 16:45",
            senderName: "佐藤（営業事務）"
        ),
        // トピック3のメッセージ（契約解除の条件について）
        InquiryMessage(
            id: 10,
            topicId: 3,
            senderType: .user,
            content: "契約解除の条件について確認したいです。",
            time: "2025年10月20日 11:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 11,
            topicId: 3,
            senderType: .staff,
            content: "契約解除の条件について、詳細を確認させていただきます。",
            time: "2025年10月20日 15:30",
            senderName: "山田（営業事務）"
        ),
        // トピック4のメッセージ（営業担当者の連絡先について）
        InquiryMessage(
            id: 12,
            topicId: 4,
            senderType: .user,
            content: "営業担当者の連絡先を教えていただけますか？",
            time: "2025年11月2日 09:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 13,
            topicId: 4,
            senderType: .staff,
            content: "営業担当者の連絡先をお伝えいたします。",
            time: "2025年11月2日 10:15",
            senderName: "鈴木（営業事務）"
        ),
        // トピック5のメッセージ（営業時間の確認）
        InquiryMessage(
            id: 14,
            topicId: 5,
            senderType: .user,
            content: "営業時間を教えていただけますか？",
            time: "2025年10月30日 14:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 15,
            topicId: 5,
            senderType: .staff,
            content: "営業時間は平日9時から18時までです。",
            time: "2025年10月30日 15:30",
            senderName: "鈴木（営業事務）"
        ),
        // トピック6のメッセージ（ローン申請の進捗について）
        InquiryMessage(
            id: 16,
            topicId: 6,
            senderType: .user,
            content: "ローン申請の進捗を確認したいです。",
            time: "2025年11月3日 11:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 17,
            topicId: 6,
            senderType: .staff,
            content: "ローン申請の審査が進行中です。",
            time: "2025年11月3日 13:20",
            senderName: "高橋（業務）"
        ),
        // トピック7のメッセージ（登記手続きの確認）
        InquiryMessage(
            id: 18,
            topicId: 7,
            senderType: .user,
            content: "登記手続きの進捗を確認したいです。",
            time: "2025年11月4日 10:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 19,
            topicId: 7,
            senderType: .staff,
            content: "登記手続きについてご案内いたします。",
            time: "2025年11月4日 11:30",
            senderName: "高橋（業務）"
        ),
        // トピック8のメッセージ（引渡し日の調整について）
        InquiryMessage(
            id: 20,
            topicId: 8,
            senderType: .user,
            content: "引渡し日の調整をお願いしたいです。",
            time: "2025年11月5日 09:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 21,
            topicId: 8,
            senderType: .staff,
            content: "引渡し日の調整についてご相談させていただきます。",
            time: "2025年11月5日 10:45",
            senderName: "高橋（業務）"
        ),
        // トピック9のメッセージ（引渡し時の立ち会いについて）
        InquiryMessage(
            id: 22,
            topicId: 9,
            senderType: .user,
            content: "引渡し時の立ち会いについて確認したいです。",
            time: "2025年10月28日 14:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 23,
            topicId: 9,
            senderType: .staff,
            content: "引渡し時の立ち会いについてご案内いたします。",
            time: "2025年10月28日 15:20",
            senderName: "高橋（業務）"
        ),
        // トピック10のメッセージ（賃貸物件の申込について）
        InquiryMessage(
            id: 24,
            topicId: 10,
            senderType: .user,
            content: "賃貸物件の申込手続きについて教えていただけますか？",
            time: "2025年11月6日 10:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 25,
            topicId: 10,
            senderType: .staff,
            content: "賃貸物件の申込手続きについてご案内いたします。",
            time: "2025年11月6日 11:30",
            senderName: "伊藤（E賃貸）"
        ),
        // トピック11のメッセージ（入居審査の進捗確認）
        InquiryMessage(
            id: 26,
            topicId: 11,
            senderType: .user,
            content: "入居審査の進捗を確認したいです。",
            time: "2025年11月4日 09:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 27,
            topicId: 11,
            senderType: .staff,
            content: "入居審査が完了いたしました。",
            time: "2025年11月4日 16:00",
            senderName: "伊藤（E賃貸）"
        ),
        // トピック12のメッセージ（初期費用の内訳について）
        InquiryMessage(
            id: 28,
            topicId: 12,
            senderType: .user,
            content: "初期費用の内訳について教えていただけますか？",
            time: "2025年10月29日 13:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 29,
            topicId: 12,
            senderType: .staff,
            content: "初期費用の内訳についてご説明いたしました。",
            time: "2025年10月29日 14:30",
            senderName: "伊藤（E賃貸）"
        ),
        // トピック13のメッセージ（エアコンの修理依頼）
        InquiryMessage(
            id: 30,
            topicId: 13,
            senderType: .user,
            content: "エアコンが故障しているので修理をお願いします。",
            time: "2025年11月7日 08:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 31,
            topicId: 13,
            senderType: .staff,
            content: "エアコンの修理業者を手配いたします。",
            time: "2025年11月7日 10:00",
            senderName: "加藤（E賃貸）"
        ),
        // トピック14のメッセージ（リフレッシュ工事の見積もり依頼）
        InquiryMessage(
            id: 32,
            topicId: 14,
            senderType: .user,
            content: "リフレッシュ工事の見積もりをお願いします。",
            time: "2025年11月1日 11:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 33,
            topicId: 14,
            senderType: .staff,
            content: "リフレッシュ工事の見積もりを作成いたします。",
            time: "2025年11月1日 14:00",
            senderName: "加藤（E賃貸）"
        ),
        // トピック15のメッセージ（給湯器の故障について）
        InquiryMessage(
            id: 34,
            topicId: 15,
            senderType: .user,
            content: "給湯器が故障しているので修理をお願いします。",
            time: "2025年10月27日 15:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 35,
            topicId: 15,
            senderType: .staff,
            content: "給湯器の修理が完了いたしました。",
            time: "2025年10月27日 17:30",
            senderName: "加藤（E賃貸）"
        ),
        // トピック16のメッセージ（物件売却の相談）
        InquiryMessage(
            id: 36,
            topicId: 16,
            senderType: .user,
            content: "物件売却について相談したいです。",
            time: "2025年11月8日 09:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 37,
            topicId: 16,
            senderType: .staff,
            content: "物件売却についてご相談させていただきます。",
            time: "2025年11月8日 10:30",
            senderName: "佐々木（E賃貸）"
        ),
        // トピック17のメッセージ（管理会社変更の手続きについて）
        InquiryMessage(
            id: 38,
            topicId: 17,
            senderType: .user,
            content: "管理会社変更の手続きについて教えていただけますか？",
            time: "2025年11月2日 13:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 39,
            topicId: 17,
            senderType: .staff,
            content: "管理会社変更の手続きについてご案内いたします。",
            time: "2025年11月2日 15:00",
            senderName: "佐々木（E賃貸）"
        ),
        // トピック18のメッセージ（駐車場の利用について）
        InquiryMessage(
            id: 40,
            topicId: 18,
            senderType: .user,
            content: "駐車場の利用について確認したいです。",
            time: "2025年11月9日 10:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 41,
            topicId: 18,
            senderType: .staff,
            content: "駐車場の利用についてご案内いたします。",
            time: "2025年11月9日 11:15",
            senderName: "渡辺（E賃貸）"
        ),
        // トピック19のメッセージ（ペット飼育の可否について）
        InquiryMessage(
            id: 42,
            topicId: 19,
            senderType: .user,
            content: "ペットを飼育することは可能ですか？",
            time: "2025年11月3日 14:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 43,
            topicId: 19,
            senderType: .staff,
            content: "ペット飼育について確認いたします。",
            time: "2025年11月3日 15:30",
            senderName: "渡辺（E賃貸）"
        ),
        // トピック20のメッセージ（鍵の紛失について）
        InquiryMessage(
            id: 44,
            topicId: 20,
            senderType: .user,
            content: "鍵を紛失してしまいました。再発行をお願いします。",
            time: "2025年10月26日 16:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 45,
            topicId: 20,
            senderType: .staff,
            content: "鍵の再発行手続きが完了いたしました。",
            time: "2025年10月26日 17:00",
            senderName: "渡辺（E賃貸）"
        ),
        // トピック21のメッセージ（その他のご相談）
        InquiryMessage(
            id: 46,
            topicId: 21,
            senderType: .user,
            content: "その他、ご相談したいことがあります。",
            time: "2025年11月10日 09:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 47,
            topicId: 21,
            senderType: .staff,
            content: "ご相談内容について確認いたします。",
            time: "2025年11月10日 10:30",
            senderName: "相談室"
        ),
        // トピック22のメッセージ（書類の再発行依頼）
        InquiryMessage(
            id: 48,
            topicId: 22,
            senderType: .user,
            content: "書類の再発行をお願いします。",
            time: "2025年11月5日 11:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 49,
            topicId: 22,
            senderType: .staff,
            content: "書類の再発行手続きを進めさせていただきます。",
            time: "2025年11月5日 13:00",
            senderName: "相談室"
        ),
        // トピック23のメッセージ（契約書の修正について）
        InquiryMessage(
            id: 50,
            topicId: 23,
            senderType: .user,
            content: "契約書の修正をお願いしたいです。",
            time: "2025年10月15日 09:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 51,
            topicId: 23,
            senderType: .staff,
            content: "契約書の修正について検討いたします。",
            time: "2025年10月15日 11:00",
            senderName: "田中（営業事務）"
        ),
        // トピック24のメッセージ（担当者の変更依頼）
        InquiryMessage(
            id: 52,
            topicId: 24,
            senderType: .user,
            content: "担当者の変更をお願いしたいです。",
            time: "2025年10月22日 10:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 53,
            topicId: 24,
            senderType: .staff,
            content: "担当者の変更について検討いたします。",
            time: "2025年10月22日 12:00",
            senderName: "鈴木（営業事務）"
        ),
        // トピック25のメッセージ（ローン金利の確認）
        InquiryMessage(
            id: 54,
            topicId: 25,
            senderType: .user,
            content: "ローン金利について確認したいです。",
            time: "2025年10月31日 09:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 55,
            topicId: 25,
            senderType: .staff,
            content: "ローン金利についてご案内いたします。",
            time: "2025年10月31日 10:30",
            senderName: "高橋（業務）"
        ),
        // トピック26のメッセージ（借入可能額の相談）
        InquiryMessage(
            id: 56,
            topicId: 26,
            senderType: .user,
            content: "借入可能額について相談したいです。",
            time: "2025年10月24日 14:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 57,
            topicId: 26,
            senderType: .staff,
            content: "借入可能額についてご説明いたしました。",
            time: "2025年10月24日 16:00",
            senderName: "高橋（業務）"
        ),
        // トピック27のメッセージ（登記完了の確認）
        InquiryMessage(
            id: 58,
            topicId: 27,
            senderType: .user,
            content: "登記完了の確認をお願いします。",
            time: "2025年10月23日 11:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 59,
            topicId: 27,
            senderType: .staff,
            content: "登記手続きが完了いたしました。",
            time: "2025年10月23日 14:00",
            senderName: "高橋（業務）"
        ),
        // トピック28のメッセージ（登記費用の内訳について）
        InquiryMessage(
            id: 60,
            topicId: 28,
            senderType: .user,
            content: "登記費用の内訳について教えていただけますか？",
            time: "2025年10月18日 13:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 61,
            topicId: 28,
            senderType: .staff,
            content: "登記費用の内訳についてご説明いたします。",
            time: "2025年10月18日 15:00",
            senderName: "高橋（業務）"
        )
    ]
    
    // topicIdでメッセージを取得する関数
    static func messages(for topicId: Int) -> [InquiryMessage] {
        return sampleMessages.filter { $0.topicId == topicId }
    }
}

