//
//  InquiryContact.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

enum InquiryContactResponseType {
    case otherResponse // 質問の受付のみ（本部に送り、チャット以外で回答）
    case chatResponse  // トピック内でスタッフが回答（チャット形式）
}

struct InquiryContact: Identifiable {
    let id: Int
    let displayOrder: Int
    let title: String
    let description: String
    let responseType: InquiryContactResponseType // 回答方法の区分
    
    init(id: Int, displayOrder: Int, title: String, description: String, responseType: InquiryContactResponseType) {
        self.id = id
        self.displayOrder = displayOrder
        self.title = title
        self.description = description
        self.responseType = responseType
    }
}

