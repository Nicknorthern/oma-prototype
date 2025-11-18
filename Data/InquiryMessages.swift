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
            id: 2001,
            topicId: 101,
            senderType: .owner,
            content: "契約書の内容について確認したいことがあります。特に、物件の引き渡し時期について詳しく教えていただけますか？",
            time: "2025年11月1日 10:30",
            senderId: 1
        ),
        InquiryMessage(
            id: 2002,
            topicId: 101,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年11月1日 11:15",
            senderId: 1
        ),
        // トピック2のメッセージ（手付金の返還について）- クローズ済み
        InquiryMessage(
            id: 2003,
            topicId: 102,
            senderType: .owner,
            content: "手付金の返還について相談したいです。",
            time: "2025年10月25日 09:15",
            senderId: 1
        ),
        InquiryMessage(
            id: 2004,
            topicId: 102,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月25日 10:00",
            senderId: 1
        ),
        // トピック3のメッセージ（契約解除の条件について）
        InquiryMessage(
            id: 2005,
            topicId: 103,
            senderType: .owner,
            content: "契約解除の条件について確認したいです。",
            time: "2025年10月20日 11:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2006,
            topicId: 103,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月20日 15:30",
            senderId: 1
        ),
        // トピック4のメッセージ（営業担当者の連絡先について）
        InquiryMessage(
            id: 2007,
            topicId: 204,
            senderType: .owner,
            content: "営業担当者の連絡先を教えていただけますか？",
            time: "2025年11月2日 09:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2008,
            topicId: 204,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年11月2日 10:15",
            senderId: 2
        ),
        // トピック5のメッセージ（営業時間の確認）
        InquiryMessage(
            id: 2009,
            topicId: 205,
            senderType: .owner,
            content: "営業時間を教えていただけますか？",
            time: "2025年10月30日 14:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2010,
            topicId: 205,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月30日 15:30",
            senderId: 2
        ),
        // トピック6のメッセージ（ローン申請の進捗について）
        InquiryMessage(
            id: 2011,
            topicId: 306,
            senderType: .owner,
            content: "ローン申請の進捗を確認したいです。",
            time: "2025年11月3日 11:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2012,
            topicId: 306,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年11月3日 13:20",
            senderId: 3
        ),
        // トピック7のメッセージ（登記手続きの確認）
        InquiryMessage(
            id: 2013,
            topicId: 407,
            senderType: .owner,
            content: "登記手続きの進捗を確認したいです。",
            time: "2025年11月4日 10:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2014,
            topicId: 407,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年11月4日 11:30",
            senderId: 3
        ),
        // トピック8のメッセージ（引渡し日の調整について）
        InquiryMessage(
            id: 2015,
            topicId: 508,
            senderType: .owner,
            content: "引渡し日の調整をお願いしたいです。",
            time: "2025年11月5日 09:30",
            senderId: 1
        ),
        InquiryMessage(
            id: 2016,
            topicId: 508,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年11月5日 10:45",
            senderId: 3
        ),
        // トピック9のメッセージ（引渡し時の立ち会いについて）
        InquiryMessage(
            id: 2017,
            topicId: 509,
            senderType: .owner,
            content: "引渡し時の立ち会いについて確認したいです。",
            time: "2025年10月28日 14:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2018,
            topicId: 509,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月28日 15:20",
            senderId: 3
        ),
        // トピック10のメッセージ（賃貸物件の申込について）
        InquiryMessage(
            id: 2019,
            topicId: 610,
            senderType: .owner,
            content: "賃貸物件の申込手続きについて教えていただけますか？",
            time: "2025年11月6日 10:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2020,
            topicId: 610,
            senderType: .staff,
            content: "賃貸物件の申込手続きについてご案内いたします。",
            time: "2025年11月6日 11:30",
            senderId: 4
        ),
        InquiryMessage(
            id: 2021,
            topicId: 610,
            senderType: .owner,
            content: "ありがとうございます。必要な書類を教えていただけますか？",
            time: "2025年11月6日 12:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2022,
            topicId: 610,
            senderType: .staff,
            content: "身分証明書、収入証明書、連帯保証人の情報が必要です。詳細はメールでお送りいたします。",
            time: "2025年11月6日 12:30",
            senderId: 4
        ),
        InquiryMessage(
            id: 2023,
            topicId: 610,
            senderType: .owner,
            content: "承知いたしました。書類を準備して提出いたします。",
            time: "2025年11月6日 13:00",
            senderId: 1
        ),
        // トピック11のメッセージ（入居審査の進捗確認）
        InquiryMessage(
            id: 2024,
            topicId: 611,
            senderType: .owner,
            content: "入居審査の進捗を確認したいです。",
            time: "2025年11月4日 09:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2025,
            topicId: 611,
            senderType: .staff,
            content: "入居審査が完了いたしました。",
            time: "2025年11月4日 16:00",
            senderId: 4
        ),
        InquiryMessage(
            id: 2026,
            topicId: 611,
            senderType: .owner,
            content: "ありがとうございます。結果はいつ頃わかりますか？",
            time: "2025年11月4日 16:30",
            senderId: 1
        ),
        InquiryMessage(
            id: 2027,
            topicId: 611,
            senderType: .staff,
            content: "審査結果は1週間程度でお知らせいたします。結果が決まり次第、ご連絡いたします。",
            time: "2025年11月4日 17:00",
            senderId: 4
        ),
        InquiryMessage(
            id: 2028,
            topicId: 611,
            senderType: .owner,
            content: "承知いたしました。よろしくお願いいたします。",
            time: "2025年11月4日 17:15",
            senderId: 1
        ),
        // トピック12のメッセージ（初期費用の内訳について）
        InquiryMessage(
            id: 2029,
            topicId: 612,
            senderType: .owner,
            content: "初期費用の内訳について教えていただけますか？",
            time: "2025年10月29日 13:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2030,
            topicId: 612,
            senderType: .staff,
            content: "初期費用の内訳についてご説明いたしました。",
            time: "2025年10月29日 14:30",
            senderId: 4
        ),
        InquiryMessage(
            id: 2031,
            topicId: 612,
            senderType: .owner,
            content: "敷金と礼金の違いについて教えていただけますか？",
            time: "2025年10月29日 15:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2032,
            topicId: 612,
            senderType: .staff,
            content: "敷金は退去時に原状回復費用を差し引いて返還されます。礼金は家主様への謝礼として返還されません。",
            time: "2025年10月29日 15:30",
            senderId: 4
        ),
        InquiryMessage(
            id: 2033,
            topicId: 612,
            senderType: .owner,
            content: "わかりました。ありがとうございます。",
            time: "2025年10月29日 16:00",
            senderId: 1
        ),
        // トピック13のメッセージ（エアコンの修理依頼）
        InquiryMessage(
            id: 2034,
            topicId: 713,
            senderType: .owner,
            content: "エアコンが故障しているので修理をお願いします。",
            time: "2025年11月7日 08:30",
            senderId: 1
        ),
        InquiryMessage(
            id: 2035,
            topicId: 713,
            senderType: .staff,
            content: "エアコンの修理業者を手配いたします。",
            time: "2025年11月7日 10:00",
            senderId: 8
        ),
        InquiryMessage(
            id: 2036,
            topicId: 713,
            senderType: .owner,
            content: "いつ頃来てもらえますか？",
            time: "2025年11月7日 10:30",
            senderId: 1
        ),
        InquiryMessage(
            id: 2037,
            topicId: 713,
            senderType: .staff,
            content: "明日の午前中に訪問予定です。詳細な時間は業者から直接ご連絡いたします。",
            time: "2025年11月7日 11:00",
            senderId: 8
        ),
        InquiryMessage(
            id: 2038,
            topicId: 713,
            senderType: .owner,
            content: "承知いたしました。お待ちしております。",
            time: "2025年11月7日 11:15",
            senderId: 1
        ),
        InquiryMessage(
            id: 2039,
            topicId: 713,
            senderType: .staff,
            content: "修理が完了しましたら、ご連絡いたします。",
            time: "2025年11月7日 11:30",
            senderId: 8
        ),
        // トピック14のメッセージ（リフレッシュ工事の見積もり依頼）
        InquiryMessage(
            id: 2040,
            topicId: 714,
            senderType: .owner,
            content: "リフレッシュ工事の見積もりをお願いします。",
            time: "2025年11月1日 11:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2041,
            topicId: 714,
            senderType: .staff,
            content: "リフレッシュ工事の見積もりを作成いたします。",
            time: "2025年11月1日 14:00",
            senderId: 8
        ),
        InquiryMessage(
            id: 2042,
            topicId: 714,
            senderType: .owner,
            content: "どのような工事内容になりますか？",
            time: "2025年11月1日 14:30",
            senderId: 1
        ),
        InquiryMessage(
            id: 2043,
            topicId: 714,
            senderType: .staff,
            content: "壁紙の張り替え、床のリフレッシュ、水回りの清掃などが含まれます。詳細は見積もり書に記載いたします。",
            time: "2025年11月1日 15:00",
            senderId: 8
        ),
        InquiryMessage(
            id: 2044,
            topicId: 714,
            senderType: .owner,
            content: "わかりました。見積もりをお待ちしております。",
            time: "2025年11月1日 15:30",
            senderId: 1
        ),
        // トピック15のメッセージ（給湯器の故障について）
        InquiryMessage(
            id: 2045,
            topicId: 715,
            senderType: .owner,
            content: "給湯器が故障しているので修理をお願いします。",
            time: "2025年10月27日 15:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2046,
            topicId: 715,
            senderType: .staff,
            content: "給湯器の修理が完了いたしました。",
            time: "2025年10月27日 17:30",
            senderId: 8
        ),
        InquiryMessage(
            id: 2047,
            topicId: 715,
            senderType: .owner,
            content: "ありがとうございます。修理費用はかかりますか？",
            time: "2025年10月27日 18:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2048,
            topicId: 715,
            senderType: .staff,
            content: "通常の使用による故障のため、修理費用は管理会社が負担いたします。",
            time: "2025年10月27日 18:30",
            senderId: 8
        ),
        InquiryMessage(
            id: 2049,
            topicId: 715,
            senderType: .owner,
            content: "承知いたしました。ご対応ありがとうございました。",
            time: "2025年10月27日 19:00",
            senderId: 1
        ),
        // トピック16のメッセージ（物件売却の相談）
        InquiryMessage(
            id: 2050,
            topicId: 816,
            senderType: .owner,
            content: "物件売却について相談したいです。",
            time: "2025年11月8日 09:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2051,
            topicId: 816,
            senderType: .staff,
            content: "物件売却についてご相談させていただきます。",
            time: "2025年11月8日 10:30",
            senderId: 5
        ),
        InquiryMessage(
            id: 2052,
            topicId: 816,
            senderType: .owner,
            content: "売却価格の目安を教えていただけますか？",
            time: "2025年11月8日 11:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2053,
            topicId: 816,
            senderType: .staff,
            content: "物件の詳細を確認させていただき、適正価格を査定いたします。現地調査の日程を調整させてください。",
            time: "2025年11月8日 11:30",
            senderId: 5
        ),
        InquiryMessage(
            id: 2054,
            topicId: 816,
            senderType: .owner,
            content: "来週の平日でしたら可能です。",
            time: "2025年11月8日 12:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2055,
            topicId: 816,
            senderType: .staff,
            content: "承知いたしました。来週の日程で調整いたします。",
            time: "2025年11月8日 12:30",
            senderId: 5
        ),
        // トピック17のメッセージ（管理会社変更の手続きについて）
        InquiryMessage(
            id: 2056,
            topicId: 817,
            senderType: .owner,
            content: "管理会社変更の手続きについて教えていただけますか？",
            time: "2025年11月2日 13:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2057,
            topicId: 817,
            senderType: .staff,
            content: "管理会社変更の手続きについてご案内いたします。",
            time: "2025年11月2日 15:00",
            senderId: 5
        ),
        InquiryMessage(
            id: 2058,
            topicId: 817,
            senderType: .owner,
            content: "必要な書類を教えていただけますか？",
            time: "2025年11月2日 15:30",
            senderId: 1
        ),
        InquiryMessage(
            id: 2059,
            topicId: 817,
            senderType: .staff,
            content: "管理委託契約書、物件の権利書、現在の管理会社との契約書などが必要です。詳細なリストをメールでお送りいたします。",
            time: "2025年11月2日 16:00",
            senderId: 5
        ),
        InquiryMessage(
            id: 2060,
            topicId: 817,
            senderType: .owner,
            content: "ありがとうございます。書類を準備いたします。",
            time: "2025年11月2日 16:30",
            senderId: 1
        ),
        // トピック18のメッセージ（駐車場の利用について）
        InquiryMessage(
            id: 2061,
            topicId: 918,
            senderType: .owner,
            content: "駐車場の利用について確認したいです。",
            time: "2025年11月9日 10:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2062,
            topicId: 918,
            senderType: .staff,
            content: "駐車場の利用についてご案内いたします。",
            time: "2025年11月9日 11:15",
            senderId: 6
        ),
        InquiryMessage(
            id: 2063,
            topicId: 918,
            senderType: .owner,
            content: "駐車場の利用料金を教えていただけますか？",
            time: "2025年11月9日 11:45",
            senderId: 1
        ),
        InquiryMessage(
            id: 2064,
            topicId: 918,
            senderType: .staff,
            content: "月額5,000円です。駐車場の利用には別途契約が必要です。",
            time: "2025年11月9日 12:00",
            senderId: 6
        ),
        InquiryMessage(
            id: 2065,
            topicId: 918,
            senderType: .owner,
            content: "承知いたしました。契約手続きをお願いします。",
            time: "2025年11月9日 12:30",
            senderId: 1
        ),
        // トピック19のメッセージ（ペット飼育の可否について）
        InquiryMessage(
            id: 2066,
            topicId: 919,
            senderType: .owner,
            content: "ペットを飼育することは可能ですか？",
            time: "2025年11月3日 14:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2067,
            topicId: 919,
            senderType: .staff,
            content: "ペット飼育について確認いたします。",
            time: "2025年11月3日 15:30",
            senderId: 6
        ),
        InquiryMessage(
            id: 2068,
            topicId: 919,
            senderType: .owner,
            content: "小型犬1匹を飼育したいのですが、可能でしょうか？",
            time: "2025年11月3日 16:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2069,
            topicId: 919,
            senderType: .staff,
            content: "当物件はペット可です。ただし、ペット可の契約には追加の敷金が必要です。詳細をご案内いたします。",
            time: "2025年11月3日 16:30",
            senderId: 6
        ),
        InquiryMessage(
            id: 2070,
            topicId: 919,
            senderType: .owner,
            content: "わかりました。追加の敷金について詳しく教えていただけますか？",
            time: "2025年11月3日 17:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2071,
            topicId: 919,
            senderType: .staff,
            content: "通常の敷金に加えて、ペット敷金として家賃の1ヶ月分が必要です。",
            time: "2025年11月3日 17:30",
            senderId: 6
        ),
        // トピック20のメッセージ（鍵の紛失について）
        InquiryMessage(
            id: 2072,
            topicId: 920,
            senderType: .owner,
            content: "鍵を紛失してしまいました。再発行をお願いします。",
            time: "2025年10月26日 16:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2073,
            topicId: 920,
            senderType: .staff,
            content: "鍵の再発行手続きが完了いたしました。",
            time: "2025年10月26日 17:00",
            senderId: 6
        ),
        InquiryMessage(
            id: 2074,
            topicId: 920,
            senderType: .owner,
            content: "再発行費用はいくらですか？",
            time: "2025年10月26日 17:30",
            senderId: 1
        ),
        InquiryMessage(
            id: 2075,
            topicId: 920,
            senderType: .staff,
            content: "鍵の再発行費用は15,000円です。お支払い方法は現金または銀行振込となります。",
            time: "2025年10月26日 18:00",
            senderId: 6
        ),
        InquiryMessage(
            id: 2076,
            topicId: 920,
            senderType: .owner,
            content: "承知いたしました。支払い方法について詳しく教えていただけますか？",
            time: "2025年10月26日 18:30",
            senderId: 1
        ),
        InquiryMessage(
            id: 2077,
            topicId: 920,
            senderType: .staff,
            content: "現金でのお支払いの場合は、鍵の受け取り時に承ります。振込の場合は、振込先口座をご案内いたします。",
            time: "2025年10月26日 19:00",
            senderId: 6
        ),
        // トピック21のメッセージ（その他のご相談）
        InquiryMessage(
            id: 2078,
            topicId: 1021,
            senderType: .owner,
            content: "その他、ご相談したいことがあります。",
            time: "2025年11月10日 09:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2079,
            topicId: 1021,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年11月10日 10:30",
            senderId: 7
        ),
        // トピック22のメッセージ（書類の再発行依頼）
        InquiryMessage(
            id: 2080,
            topicId: 1022,
            senderType: .owner,
            content: "書類の再発行をお願いします。",
            time: "2025年11月5日 11:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2081,
            topicId: 1022,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年11月5日 13:00",
            senderId: 7
        ),
        // トピック23のメッセージ（契約書の修正について）
        InquiryMessage(
            id: 2082,
            topicId: 123,
            senderType: .owner,
            content: "契約書の修正をお願いしたいです。",
            time: "2025年10月15日 09:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2083,
            topicId: 123,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月15日 11:00",
            senderId: 1
        ),
        // トピック24のメッセージ（担当者の変更依頼）
        InquiryMessage(
            id: 2084,
            topicId: 224,
            senderType: .owner,
            content: "担当者の変更をお願いしたいです。",
            time: "2025年10月22日 10:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2085,
            topicId: 224,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月22日 12:00",
            senderId: 2
        ),
        // トピック25のメッセージ（ローン金利の確認）
        InquiryMessage(
            id: 2086,
            topicId: 325,
            senderType: .owner,
            content: "ローン金利について確認したいです。",
            time: "2025年10月31日 09:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2087,
            topicId: 325,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月31日 10:30",
            senderId: 3
        ),
        // トピック26のメッセージ（借入可能額の相談）
        InquiryMessage(
            id: 2088,
            topicId: 326,
            senderType: .owner,
            content: "借入可能額について相談したいです。",
            time: "2025年10月24日 14:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2089,
            topicId: 326,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月24日 16:00",
            senderId: 3
        ),
        // トピック27のメッセージ（登記完了の確認）
        InquiryMessage(
            id: 2090,
            topicId: 427,
            senderType: .owner,
            content: "登記完了の確認をお願いします。",
            time: "2025年10月23日 11:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2091,
            topicId: 427,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月23日 14:00",
            senderId: 3
        ),
        // トピック28のメッセージ（登記費用の内訳について）
        InquiryMessage(
            id: 2092,
            topicId: 428,
            senderType: .owner,
            content: "登記費用の内訳について教えていただけますか？",
            time: "2025年10月18日 13:00",
            senderId: 1
        ),
        InquiryMessage(
            id: 2093,
            topicId: 428,
            senderType: .staff,
            content: "お問い合わせを受付いたしました。エスリード（株）の担当者よりお客様のメールアドレス宛にてご回答差し上げます。",
            time: "2025年10月18日 15:00",
            senderId: 3
        )
    ]
    
    // topicIdでメッセージを取得する関数
    static func messages(for topicId: Int) -> [InquiryMessage] {
        return sampleMessages.filter { $0.topicId == topicId }
    }
}

