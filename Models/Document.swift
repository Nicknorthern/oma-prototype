//
//  Document.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

struct Document: Identifiable {
    let id: Int
    let fileName: String
    let propertyId: Int
    let roomId: Int
    let ownerId: Int
    let fileDatetime: String
    let fileSize: Int // bytes
    let contentType: String
    let updatedAt: String
    let createdAt: String
    let pmCompany: String
    let fileExtension: String
    let createdMonth: String
    let category: Int // カテゴリーID (0: カテゴリーなし, 1: 売買契約, 2: 資産管理及び物件管理, 3: 賃貸借管理, 4: 保険, 5: 税務, 6: ローン・融資, 7: その他, 8: 工事関係)
    let propertyName: String?
    let uploaderId: Int?
    let isPublished: Bool
}

