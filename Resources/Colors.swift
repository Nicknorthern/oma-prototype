//
//  Colors.swift
//  oma-prototype
//
//  Created with CURSOR
//  WealthPark Color Palette
//  Based on wpb-prototype/frontend/tailwind.config.js
//

import SwiftUI

extension Color {
    // MARK: - WealthPark Blue Palette
    struct WPBlue {
        static let _900 = Color(hex: "3B33CC")
        static let _800 = Color(hex: "3459EC")
        static let _700 = Color(hex: "2E6CFF")
        static let _600 = Color(hex: "2181FF")
        static let _500 = Color(hex: "0090FF")
        static let _400 = Color(hex: "29A1FF")
        static let _300 = Color(hex: "56B3FF")
        static let _200 = Color(hex: "8CC9FF")
        static let _100 = Color(hex: "BBDDFF")
        static let _50 = Color(hex: "E2F2FF")
        static let _25 = Color(hex: "F0F8FF")
    }
    
    // MARK: - WealthPark Gray Palette
    struct WPGray {
        static let _900 = Color(hex: "000000")
        static let _800 = Color(hex: "262626")
        static let _700 = Color(hex: "3D3D3D")
        static let _600 = Color(hex: "555555")
        static let _500 = Color(hex: "7B7B7B")
        static let _400 = Color(hex: "A1A1A1")
        static let _300 = Color(hex: "C4C4C4")
        static let _200 = Color(hex: "D9D9D9")
        static let _100 = Color(hex: "E9E9E9")
        static let _50 = Color(hex: "F5F5F5")
        static let _25 = Color(hex: "FAFAFA")
    }
    
    // MARK: - Semantic colors - Yellow (Warning)
    struct WPYellow {
        static let _900 = Color(hex: "F97F1B")
        static let _800 = Color(hex: "FDA827")
        static let _700 = Color(hex: "FFC02E")
        static let _600 = Color(hex: "FFD835")
        static let _500 = Color(hex: "FDE533")
        static let _400 = Color(hex: "FFEB54")
        static let _300 = Color(hex: "FFF074")
        static let _200 = Color(hex: "FFF59C")
        static let _100 = Color(hex: "FFF9C4")
        static let _50 = Color(hex: "FFFDE7")
        static let _25 = Color(hex: "FFFEF3")
    }
    
    // MARK: - Semantic colors - Red (Danger, Error)
    struct WPRed {
        static let _900 = Color(hex: "971E0F")
        static let _800 = Color(hex: "C02E1C")
        static let _700 = Color(hex: "DE402D")
        static let _600 = Color(hex: "F45542")
        static let _500 = Color(hex: "FF6A58")
        static let _400 = Color(hex: "FF8172")
        static let _300 = Color(hex: "FFA99D")
        static let _200 = Color(hex: "FFC5BD")
        static let _100 = Color(hex: "FFD7CF")
        static let _50 = Color(hex: "FFE8E3")
        static let _25 = Color(hex: "FFF5F3")
    }
    
    // MARK: - Semantic colors - Green (Success, Positive)
    struct WPGreen {
        static let _900 = Color(hex: "006B38")
        static let _800 = Color(hex: "008947")
        static let _700 = Color(hex: "00A857")
        static let _600 = Color(hex: "02BE63")
        static let _500 = Color(hex: "18D178")
        static let _400 = Color(hex: "44E195")
        static let _300 = Color(hex: "75EBB2")
        static let _200 = Color(hex: "9FF2CA")
        static let _100 = Color(hex: "C9FAE2")
        static let _50 = Color(hex: "DDFDEE")
        static let _25 = Color(hex: "F1FFF8")
    }
    
    // MARK: - Neutral colors
    struct WPNeutral {
        static let _900 = Color(hex: "2C303E")
        static let _800 = Color(hex: "3C4359")
        static let _700 = Color(hex: "4D5B79")
        static let _600 = Color(hex: "66738C")
        static let _500 = Color(hex: "818B9E")
        static let _400 = Color(hex: "9DA6B5")
        static let _300 = Color(hex: "BAC0CC")
        static let _200 = Color(hex: "D7DBE2")
        static let _100 = Color(hex: "E5E8ED")
        static let _50 = Color(hex: "F4F5F7")
        static let _25 = Color(hex: "FAFAFC")
    }
    
    // MARK: - Hex Color Initializer
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

