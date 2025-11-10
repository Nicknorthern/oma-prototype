//
//  InquiryContact.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

struct InquiryContact: Identifiable {
    let id: Int
    let displayOrder: Int
    let title: String
    let description: String
    
    init(id: Int, displayOrder: Int, title: String, description: String) {
        self.id = id
        self.displayOrder = displayOrder
        self.title = title
        self.description = description
    }
}

