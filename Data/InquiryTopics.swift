//
//  InquiryTopics.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

struct InquiryTopics {
    // サンプルデータ: 各InquiryContactに対応するトピック
    static let sampleTopics: [InquiryTopic] = [
        // InquiryContact ID: 1 (売買契約の内容にかかわること)
        InquiryTopic(
            id: 1,
            inquiryContactId: 1,
            title: "契約書の内容について確認したい",
            createdAt: "2025年11月1日 10:30",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "承知いたしました。契約書の内容について確認いたします。",
            latestMessageTime: "2025年11月1日 14:20"
        ),
        InquiryTopic(
            id: 2,
            inquiryContactId: 1,
            title: "手付金の返還について",
            createdAt: "2025年10月25日 09:15",
            isClosed: true,
            canClose: false,
            latestMessagePreview: "手付金の返還手続きが完了いたしました。",
            latestMessageTime: "2025年10月28日 16:45"
        ),
        InquiryTopic(
            id: 3,
            inquiryContactId: 1,
            title: "契約解除の条件について",
            createdAt: "2025年10月20日 11:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "契約解除の条件について、詳細を確認させていただきます。",
            latestMessageTime: "2025年10月20日 15:30"
        ),
        InquiryTopic(
            id: 23,
            inquiryContactId: 1,
            title: "契約書の修正について",
            createdAt: "2025年10月15日 09:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "契約書の修正について検討いたします。",
            latestMessageTime: "2025年10月15日 11:00"
        ),
        // InquiryContact ID: 2 (営業担当者にかかわること)
        InquiryTopic(
            id: 4,
            inquiryContactId: 2,
            title: "営業担当者の連絡先について",
            createdAt: "2025年11月2日 09:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "営業担当者の連絡先をお伝えいたします。",
            latestMessageTime: "2025年11月2日 10:15"
        ),
        InquiryTopic(
            id: 5,
            inquiryContactId: 2,
            title: "営業時間の確認",
            createdAt: "2025年10月30日 14:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "営業時間は平日9時から18時までです。",
            latestMessageTime: "2025年10月30日 15:30"
        ),
        InquiryTopic(
            id: 24,
            inquiryContactId: 2,
            title: "担当者の変更依頼",
            createdAt: "2025年10月22日 10:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "担当者の変更について検討いたします。",
            latestMessageTime: "2025年10月22日 12:00"
        ),
        // InquiryContact ID: 3 (住宅ローン、ローン会社にかかわること)
        InquiryTopic(
            id: 6,
            inquiryContactId: 3,
            title: "ローン申請の進捗について",
            createdAt: "2025年11月3日 11:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "ローン申請の審査が進行中です。",
            latestMessageTime: "2025年11月3日 13:20"
        ),
        InquiryTopic(
            id: 25,
            inquiryContactId: 3,
            title: "ローン金利の確認",
            createdAt: "2025年10月31日 09:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "ローン金利についてご案内いたします。",
            latestMessageTime: "2025年10月31日 10:30"
        ),
        InquiryTopic(
            id: 26,
            inquiryContactId: 3,
            title: "借入可能額の相談",
            createdAt: "2025年10月24日 14:00",
            isClosed: true,
            canClose: false,
            latestMessagePreview: "借入可能額についてご説明いたしました。",
            latestMessageTime: "2025年10月24日 16:00"
        ),
        // InquiryContact ID: 4 (不動産登記にかかわること)
        InquiryTopic(
            id: 7,
            inquiryContactId: 4,
            title: "登記手続きの確認",
            createdAt: "2025年11月4日 10:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "登記手続きについてご案内いたします。",
            latestMessageTime: "2025年11月4日 11:30"
        ),
        InquiryTopic(
            id: 27,
            inquiryContactId: 4,
            title: "登記完了の確認",
            createdAt: "2025年10月23日 11:00",
            isClosed: true,
            canClose: false,
            latestMessagePreview: "登記手続きが完了いたしました。",
            latestMessageTime: "2025年10月23日 14:00"
        ),
        InquiryTopic(
            id: 28,
            inquiryContactId: 4,
            title: "登記費用の内訳について",
            createdAt: "2025年10月18日 13:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "登記費用の内訳についてご説明いたします。",
            latestMessageTime: "2025年10月18日 15:00"
        ),
        // InquiryContact ID: 5 (物件のお引渡しにかかわること)
        InquiryTopic(
            id: 8,
            inquiryContactId: 5,
            title: "引渡し日の調整について",
            createdAt: "2025年11月5日 09:30",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "引渡し日の調整についてご相談させていただきます。",
            latestMessageTime: "2025年11月5日 10:45"
        ),
        InquiryTopic(
            id: 9,
            inquiryContactId: 5,
            title: "引渡し時の立ち会いについて",
            createdAt: "2025年10月28日 14:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "引渡し時の立ち会いについてご案内いたします。",
            latestMessageTime: "2025年10月28日 15:20"
        ),
        // InquiryContact ID: 6 (賃貸募集・申込について)
        InquiryTopic(
            id: 10,
            inquiryContactId: 6,
            title: "賃貸物件の申込について",
            createdAt: "2025年11月6日 10:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "賃貸物件の申込手続きについてご案内いたします。",
            latestMessageTime: "2025年11月6日 11:30"
        ),
        InquiryTopic(
            id: 11,
            inquiryContactId: 6,
            title: "入居審査の進捗確認",
            createdAt: "2025年11月4日 09:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "入居審査が完了いたしました。",
            latestMessageTime: "2025年11月4日 16:00"
        ),
        InquiryTopic(
            id: 12,
            inquiryContactId: 6,
            title: "初期費用の内訳について",
            createdAt: "2025年10月29日 13:00",
            isClosed: true,
            canClose: false,
            latestMessagePreview: "初期費用の内訳についてご説明いたしました。",
            latestMessageTime: "2025年10月29日 14:30"
        ),
        // InquiryContact ID: 7 (リフレッシュ工事・住設機器修理について)
        InquiryTopic(
            id: 13,
            inquiryContactId: 7,
            title: "エアコンの修理依頼",
            createdAt: "2025年11月7日 08:30",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "エアコンの修理業者を手配いたします。",
            latestMessageTime: "2025年11月7日 10:00"
        ),
        InquiryTopic(
            id: 14,
            inquiryContactId: 7,
            title: "リフレッシュ工事の見積もり依頼",
            createdAt: "2025年11月1日 11:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "リフレッシュ工事の見積もりを作成いたします。",
            latestMessageTime: "2025年11月1日 14:00"
        ),
        InquiryTopic(
            id: 15,
            inquiryContactId: 7,
            title: "給湯器の故障について",
            createdAt: "2025年10月27日 15:00",
            isClosed: true,
            canClose: false,
            latestMessagePreview: "給湯器の修理が完了いたしました。",
            latestMessageTime: "2025年10月27日 17:30"
        ),
        // InquiryContact ID: 8 (物件売却・賃貸管理会社変更について)
        InquiryTopic(
            id: 16,
            inquiryContactId: 8,
            title: "物件売却の相談",
            createdAt: "2025年11月8日 09:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "物件売却についてご相談させていただきます。",
            latestMessageTime: "2025年11月8日 10:30"
        ),
        InquiryTopic(
            id: 17,
            inquiryContactId: 8,
            title: "管理会社変更の手続きについて",
            createdAt: "2025年11月2日 13:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "管理会社変更の手続きについてご案内いたします。",
            latestMessageTime: "2025年11月2日 15:00"
        ),
        // InquiryContact ID: 9 (賃貸その他)
        InquiryTopic(
            id: 18,
            inquiryContactId: 9,
            title: "駐車場の利用について",
            createdAt: "2025年11月9日 10:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "駐車場の利用についてご案内いたします。",
            latestMessageTime: "2025年11月9日 11:15"
        ),
        InquiryTopic(
            id: 19,
            inquiryContactId: 9,
            title: "ペット飼育の可否について",
            createdAt: "2025年11月3日 14:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "ペット飼育について確認いたします。",
            latestMessageTime: "2025年11月3日 15:30"
        ),
        InquiryTopic(
            id: 20,
            inquiryContactId: 9,
            title: "鍵の紛失について",
            createdAt: "2025年10月26日 16:00",
            isClosed: true,
            canClose: false,
            latestMessagePreview: "鍵の再発行手続きが完了いたしました。",
            latestMessageTime: "2025年10月26日 17:00"
        ),
        // InquiryContact ID: 10 (その他)
        InquiryTopic(
            id: 21,
            inquiryContactId: 10,
            title: "その他のご相談",
            createdAt: "2025年11月10日 09:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "ご相談内容について確認いたします。",
            latestMessageTime: "2025年11月10日 10:30"
        ),
        InquiryTopic(
            id: 22,
            inquiryContactId: 10,
            title: "書類の再発行依頼",
            createdAt: "2025年11月5日 11:00",
            isClosed: false,
            canClose: true,
            latestMessagePreview: "書類の再発行手続きを進めさせていただきます。",
            latestMessageTime: "2025年11月5日 13:00"
        )
    ]
    
    // inquiryContactIdでトピックを取得する関数
    static func topics(for inquiryContactId: Int) -> [InquiryTopic] {
        return sampleTopics.filter { $0.inquiryContactId == inquiryContactId }
    }
}

