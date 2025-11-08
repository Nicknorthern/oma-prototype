//
//  TopicItem.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

struct TopicItem: Identifiable {
    let id = UUID()
    let title: String
    let companyName: String
    let ownerName: String
    let messagePreview: String
    let date: String
}

