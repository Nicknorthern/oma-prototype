//
//  Onboarding.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct OnboardingView: View {
    @State private var showLoginForm = false
    
    var body: some View {
        Group {
            if showLoginForm {
                LoginFormView(onBack: { showLoginForm = false })
            } else {
                VStack(spacing: 0) {
                    Spacer()
                    // WealthParkロゴ
                    Image("logo_wp_horizontal")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 48)
                        .padding(EdgeInsets(top: 120, leading: 0, bottom: 120, trailing: 0))
                        .frame(minHeight: 240)
                    
                    // メインコンテンツ
                    VStack(alignment: .leading, spacing: 40) {
                        // 利用規約テキスト
                        VStack(alignment: .leading, spacing: 16) {
                            Text("WealthParkの利用規約とプライバシーポリシーに同意の上、ログインしてください。")
                                .font(Font.custom("SF Pro", size: 16))
                                .lineSpacing(0)
                                .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        }
                        
                        // ボタン
                        VStack(spacing: 8) {
                            // ログインボタン
                            Button(action: {
                                showLoginForm = true
                            }) {
                                HStack(spacing: 10) {
                                    Text("ログイン")
                                        .font(Font.custom("SF Pro", size: 16).weight(.bold))
                                        .lineSpacing(24)
                                        .foregroundColor(.white)
                                }
                                .frame(maxWidth: .infinity)
                                .padding(16)
                                .background(Color(red: 0.18, green: 0.42, blue: 1))
                                .cornerRadius(50)
                            }
                            .frame(width: 327)
                            
                            // 招待コードでログインボタン
                            Button(action: {}) {
                                HStack(spacing: 10) {
                                    Text("招待コードでログイン")
                                        .font(Font.custom("SF Pro", size: 16).weight(.bold))
                                        .lineSpacing(24)
                                        .foregroundColor(Color(red: 0.18, green: 0.42, blue: 1))
                                }
                                .frame(maxWidth: .infinity)
                                .padding(EdgeInsets(top: 16, leading: 40, bottom: 16, trailing: 40))
                                .background(.white)
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .inset(by: 0.50)
                                        .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.50)
                                )
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                    }
                    Spacer()
                }
                .background(Color.white)
                .padding(EdgeInsets(top: 0, leading: 24, bottom: 16, trailing: 24))
                .frame(width: 375)
            }
        }
    }
}

#Preview {
    OnboardingView()
}
