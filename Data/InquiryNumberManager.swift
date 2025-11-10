//
//  InquiryNumberManager.swift
//  oma-prototype
//
//  Created with CURSOR
//

import Foundation

class InquiryNumberManager {
    static let shared = InquiryNumberManager()
    
    private let userDefaultsKey = "InquiryNumberCounter"
    private var currentNumber: Int {
        get {
            let saved = UserDefaults.standard.integer(forKey: userDefaultsKey)
            return saved > 0 ? saved : 0
        }
        set {
            UserDefaults.standard.set(newValue, forKey: userDefaultsKey)
        }
    }
    
    private init() {}
    
    // 次のお問い合わせ番号を取得（1から始まり、1ずつインクリメント）
    func getNextInquiryNumber() -> Int {
        currentNumber += 1
        return currentNumber
    }
    
    // 現在の番号を取得（インクリメントしない）
    func getCurrentInquiryNumber() -> Int {
        return currentNumber
    }
    
    // 番号をリセット（テスト用）
    func reset() {
        currentNumber = 0
    }
}



