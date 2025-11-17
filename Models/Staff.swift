//
//  Staff.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

// ユーザー区分の型
enum UserType: String {
    case internalUser = "internal"
    case externalUser = "external"
}

// スタッフデータの型
struct Staff: Identifiable {
    let id: Int? // ユーザーID（主キー）
    let externalUserId: String // スタッフコード（例: 'staff001'）
    let name: String
    let position: String
    let email: String
    let group: String? // 物件グループ
    let role: Int? // ロールID
    let registeredAt: String? // 登録日
    let lastLogin: String? // 最終ログイン
    let status: String? // ステータス
    let userType: UserType? // ユーザー区分（社内/社外）
    let avatar: String? // アバター画像URL（未設定の場合は icon_man_120.webp をフォールバック）
    
    init(id: Int?, externalUserId: String, name: String, position: String, email: String, group: String?, role: Int?, registeredAt: String?, lastLogin: String?, status: String?, userType: UserType?, avatar: String?) {
        self.id = id
        self.externalUserId = externalUserId
        self.name = name
        self.position = position
        self.email = email
        self.group = group
        self.role = role
        self.registeredAt = registeredAt
        self.lastLogin = lastLogin
        self.status = status
        self.userType = userType
        self.avatar = avatar
    }
}

