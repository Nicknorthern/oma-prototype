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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年11月1日 11:15",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月25日 10:00",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
        InquiryMessage(
            id: 62,
            topicId: 10,
            senderType: .user,
            content: "ありがとうございます。必要な書類を教えていただけますか？",
            time: "2025年11月6日 12:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 63,
            topicId: 10,
            senderType: .staff,
            content: "身分証明書、収入証明書、連帯保証人の情報が必要です。詳細はメールでお送りいたします。",
            time: "2025年11月6日 12:30",
            senderName: "伊藤（E賃貸）"
        ),
        InquiryMessage(
            id: 64,
            topicId: 10,
            senderType: .user,
            content: "承知いたしました。書類を準備して提出いたします。",
            time: "2025年11月6日 13:00",
            senderName: nil
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
        InquiryMessage(
            id: 65,
            topicId: 11,
            senderType: .user,
            content: "ありがとうございます。結果はいつ頃わかりますか？",
            time: "2025年11月4日 16:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 66,
            topicId: 11,
            senderType: .staff,
            content: "審査結果は1週間程度でお知らせいたします。結果が決まり次第、ご連絡いたします。",
            time: "2025年11月4日 17:00",
            senderName: "伊藤（E賃貸）"
        ),
        InquiryMessage(
            id: 67,
            topicId: 11,
            senderType: .user,
            content: "承知いたしました。よろしくお願いいたします。",
            time: "2025年11月4日 17:15",
            senderName: nil
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
        InquiryMessage(
            id: 68,
            topicId: 12,
            senderType: .user,
            content: "敷金と礼金の違いについて教えていただけますか？",
            time: "2025年10月29日 15:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 69,
            topicId: 12,
            senderType: .staff,
            content: "敷金は退去時に原状回復費用を差し引いて返還されます。礼金は家主様への謝礼として返還されません。",
            time: "2025年10月29日 15:30",
            senderName: "伊藤（E賃貸）"
        ),
        InquiryMessage(
            id: 70,
            topicId: 12,
            senderType: .user,
            content: "わかりました。ありがとうございます。",
            time: "2025年10月29日 16:00",
            senderName: nil
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
        InquiryMessage(
            id: 71,
            topicId: 13,
            senderType: .user,
            content: "いつ頃来てもらえますか？",
            time: "2025年11月7日 10:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 72,
            topicId: 13,
            senderType: .staff,
            content: "明日の午前中に訪問予定です。詳細な時間は業者から直接ご連絡いたします。",
            time: "2025年11月7日 11:00",
            senderName: "加藤（E賃貸）"
        ),
        InquiryMessage(
            id: 73,
            topicId: 13,
            senderType: .user,
            content: "承知いたしました。お待ちしております。",
            time: "2025年11月7日 11:15",
            senderName: nil
        ),
        InquiryMessage(
            id: 74,
            topicId: 13,
            senderType: .staff,
            content: "修理が完了しましたら、ご連絡いたします。",
            time: "2025年11月7日 11:30",
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
        InquiryMessage(
            id: 75,
            topicId: 14,
            senderType: .user,
            content: "どのような工事内容になりますか？",
            time: "2025年11月1日 14:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 76,
            topicId: 14,
            senderType: .staff,
            content: "壁紙の張り替え、床のリフレッシュ、水回りの清掃などが含まれます。詳細は見積もり書に記載いたします。",
            time: "2025年11月1日 15:00",
            senderName: "加藤（E賃貸）"
        ),
        InquiryMessage(
            id: 77,
            topicId: 14,
            senderType: .user,
            content: "わかりました。見積もりをお待ちしております。",
            time: "2025年11月1日 15:30",
            senderName: nil
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
        InquiryMessage(
            id: 78,
            topicId: 15,
            senderType: .user,
            content: "ありがとうございます。修理費用はかかりますか？",
            time: "2025年10月27日 18:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 79,
            topicId: 15,
            senderType: .staff,
            content: "通常の使用による故障のため、修理費用は管理会社が負担いたします。",
            time: "2025年10月27日 18:30",
            senderName: "加藤（E賃貸）"
        ),
        InquiryMessage(
            id: 80,
            topicId: 15,
            senderType: .user,
            content: "承知いたしました。ご対応ありがとうございました。",
            time: "2025年10月27日 19:00",
            senderName: nil
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
        InquiryMessage(
            id: 81,
            topicId: 16,
            senderType: .user,
            content: "売却価格の目安を教えていただけますか？",
            time: "2025年11月8日 11:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 82,
            topicId: 16,
            senderType: .staff,
            content: "物件の詳細を確認させていただき、適正価格を査定いたします。現地調査の日程を調整させてください。",
            time: "2025年11月8日 11:30",
            senderName: "佐々木（E賃貸）"
        ),
        InquiryMessage(
            id: 83,
            topicId: 16,
            senderType: .user,
            content: "来週の平日でしたら可能です。",
            time: "2025年11月8日 12:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 84,
            topicId: 16,
            senderType: .staff,
            content: "承知いたしました。来週の日程で調整いたします。",
            time: "2025年11月8日 12:30",
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
        InquiryMessage(
            id: 85,
            topicId: 17,
            senderType: .user,
            content: "必要な書類を教えていただけますか？",
            time: "2025年11月2日 15:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 86,
            topicId: 17,
            senderType: .staff,
            content: "管理委託契約書、物件の権利書、現在の管理会社との契約書などが必要です。詳細なリストをメールでお送りいたします。",
            time: "2025年11月2日 16:00",
            senderName: "佐々木（E賃貸）"
        ),
        InquiryMessage(
            id: 87,
            topicId: 17,
            senderType: .user,
            content: "ありがとうございます。書類を準備いたします。",
            time: "2025年11月2日 16:30",
            senderName: nil
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
        InquiryMessage(
            id: 88,
            topicId: 18,
            senderType: .user,
            content: "駐車場の利用料金を教えていただけますか？",
            time: "2025年11月9日 11:45",
            senderName: nil
        ),
        InquiryMessage(
            id: 89,
            topicId: 18,
            senderType: .staff,
            content: "月額5,000円です。駐車場の利用には別途契約が必要です。",
            time: "2025年11月9日 12:00",
            senderName: "渡辺（E賃貸）"
        ),
        InquiryMessage(
            id: 90,
            topicId: 18,
            senderType: .user,
            content: "承知いたしました。契約手続きをお願いします。",
            time: "2025年11月9日 12:30",
            senderName: nil
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
        InquiryMessage(
            id: 91,
            topicId: 19,
            senderType: .user,
            content: "小型犬1匹を飼育したいのですが、可能でしょうか？",
            time: "2025年11月3日 16:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 92,
            topicId: 19,
            senderType: .staff,
            content: "当物件はペット可です。ただし、ペット可の契約には追加の敷金が必要です。詳細をご案内いたします。",
            time: "2025年11月3日 16:30",
            senderName: "渡辺（E賃貸）"
        ),
        InquiryMessage(
            id: 93,
            topicId: 19,
            senderType: .user,
            content: "わかりました。追加の敷金について詳しく教えていただけますか？",
            time: "2025年11月3日 17:00",
            senderName: nil
        ),
        InquiryMessage(
            id: 94,
            topicId: 19,
            senderType: .staff,
            content: "通常の敷金に加えて、ペット敷金として家賃の1ヶ月分が必要です。",
            time: "2025年11月3日 17:30",
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
        InquiryMessage(
            id: 95,
            topicId: 20,
            senderType: .user,
            content: "再発行費用はいくらですか？",
            time: "2025年10月26日 17:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 96,
            topicId: 20,
            senderType: .staff,
            content: "鍵の再発行費用は15,000円です。お支払い方法は現金または銀行振込となります。",
            time: "2025年10月26日 18:00",
            senderName: "渡辺（E賃貸）"
        ),
        InquiryMessage(
            id: 97,
            topicId: 20,
            senderType: .user,
            content: "承知いたしました。支払い方法について詳しく教えていただけますか？",
            time: "2025年10月26日 18:30",
            senderName: nil
        ),
        InquiryMessage(
            id: 98,
            topicId: 20,
            senderType: .staff,
            content: "現金でのお支払いの場合は、鍵の受け取り時に承ります。振込の場合は、振込先口座をご案内いたします。",
            time: "2025年10月26日 19:00",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
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
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月18日 15:00",
            senderName: "高橋（業務）"
        )
    ]
    
    // topicIdでメッセージを取得する関数
    static func messages(for topicId: Int) -> [InquiryMessage] {
        return sampleMessages.filter { $0.topicId == topicId }
    }
}

