//
//  Activities.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

struct Activities {
    static let items: [Activity] = [
        // 確認・回答が必要
        Activity(
            status: .unanswered,
            title: "【承諾依頼】退去のお知らせと募集条件のご提案（部屋）",
            propertyName: "下志津アパートメント",
            roomNumber: "0101",
            messagePreview: "お世話になっております。標記のお部屋が解約となります。再提案",
            date: "11:10",
            hasUnreadDot: true
        ),
        Activity(
            status: .unconfirmed,
            title: "工事完了報告",
            propertyName: "デイズハイツ吉野川",
            roomNumber: "510",
            messagePreview: "いつもお世話になっております。工事が完了しましたのでお知らせ",
            date: "9:13",
            hasUnreadDot: true
        ),
        Activity(
            status: .reportUnread,
            title: "収支報告書",
            propertyName: "プレステージ松阪",
            roomNumber: "301",
            messagePreview: "いつもお世話になっております。今月分の収支報告書をお送りいたします。",
            date: "8月13日",
            hasUnreadDot: true
        ),
        Activity(
            status: .reproposalUnanswered,
            title: "退室リフォーム工事見積書※お立会い有",
            propertyName: "ベルパーク常盤",
            roomNumber: "1023",
            messagePreview: "お世話になっております。標記のお部屋の退室リフォーム工事",
            date: "2024年12月31日",
            hasUnreadDot: true
        ),
        // 確認・回答済み他
        Activity(
            status: .answeredYes,
            title: "アクティビティテンプレート名 | 要件のタイトルアクティビティテンプレート名",
            propertyName: "物件名物件名物件名物件名物件名物件名物件名物件名物件名物件名",
            roomNumber: "10000001",
            messagePreview: "挨拶文なければ要件の詳細挨拶文なければ要件の詳細挨拶文なければ要件の詳細",
            date: "2024年12月31日",
            hasUnreadDot: false
        ),
        Activity(
            status: .confirmed,
            title: "アクティビティテンプレート名 | 要件のタイトルアクティビティテンプレート名",
            propertyName: "物件名物件名物件名物件名物件名物件名物件名物件名物件名物件名",
            roomNumber: "10000001",
            messagePreview: "挨拶文なければ要件の詳細挨拶文なければ要件の詳細挨拶文なければ要件の詳細",
            date: "2024年12月31日",
            hasUnreadDot: false
        ),
        Activity(
            status: .reportRead,
            title: "アクティビティテンプレート名 | 要件のタイトルアクティビティテンプレート名",
            propertyName: "物件名物件名物件名物件名物件名物件名物件名物件名物件名物件名",
            roomNumber: "10000001",
            messagePreview: "挨拶文なければ要件の詳細挨拶文なければ要件の詳細挨拶文なければ要件の詳細",
            date: "2024年12月31日",
            hasUnreadDot: false
        ),
        Activity(
            status: .answeredNo,
            title: "アクティビティテンプレート名 | 要件のタイトルアクティビティテンプレート名",
            propertyName: "物件名物件名物件名物件名物件名物件名物件名物件名物件名物件名",
            roomNumber: "10000001",
            messagePreview: "挨拶文なければ要件の詳細挨拶文なければ要件の詳細挨拶文なければ要件の詳細",
            date: "2024年12月31日",
            hasUnreadDot: false
        ),
        Activity(
            status: .rejected,
            title: "アクティビティテンプレート名 | 要件のタイトルアクティビティテンプレート名",
            propertyName: "物件名物件名物件名物件名物件名物件名物件名物件名物件名物件名",
            roomNumber: "10000001",
            messagePreview: "挨拶文なければ要件の詳細挨拶文なければ要件の詳細挨拶文なければ要件の詳細",
            date: "2024年12月31日",
            hasUnreadDot: false
        ),
        Activity(
            status: .canceled,
            title: "アクティビティテンプレート名 | 要件のタイトルアクティビティテンプレート名",
            propertyName: "物件名物件名物件名物件名物件名物件名物件名物件名物件名物件名",
            roomNumber: "10000001",
            messagePreview: "挨拶文なければ要件の詳細挨拶文なければ要件の詳細挨拶文なければ要件の詳細",
            date: "2024年12月31日",
            hasUnreadDot: false
        ),
        Activity(
            status: .deleted,
            title: "",
            propertyName: "",
            roomNumber: "",
            messagePreview: "この確認リストは管理会社により削除されました（2024年12月31日 23:59)",
            date: "2024年12月31日",
            hasUnreadDot: false
        )
    ]
    
    static var pendingItems: [Activity] {
        items.filter { item in
            item.status == .unanswered || item.status == .unconfirmed || 
            item.status == .reportUnread || item.status == .reproposalUnanswered
        }
    }
    
    static var completedItems: [Activity] {
        items.filter { item in
            item.status != .unanswered && item.status != .unconfirmed && 
            item.status != .reportUnread && item.status != .reproposalUnanswered
        }
    }
}

