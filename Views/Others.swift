//
//  Others.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct Others: View {
    @Environment(\.dismiss) var dismiss
    @State private var navigationPath = NavigationPath()
    
    let menuItems = [
        "書類",
        "アカウント設定",
        "管理会社情報",
        "管理会社と名義",
        "言語",
        "通貨表示設定",
        "お問い合わせ",
        "利用規約",
        "プライバシーポリシー"
    ]
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack(spacing: 0) {
                // ヘッダー
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .medium))
                    }
                    .padding(.leading, 16)
                    
                    Spacer()
                }
                .padding(.top, 8)
                .padding(.bottom, 16)
                .background(Color.white)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        // タイトル
                        Text("その他")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.black)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 16)
                        
                        // 説明文
                        Text("各種設定の変更・書類の管理ができます。")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 24)
                        
                        // 一番目のメニューの上の罫線
                        Divider()
                            .padding(.leading, 16)
                        
                        // メニュー項目
                        ForEach(menuItems, id: \.self) { item in
                            Button(action: {
                                if item == "書類" {
                                    navigationPath.append("DocumentList")
                                }
                            }) {
                                HStack {
                                    Text(item)
                                        .font(.system(size: 16))
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 14))
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 16)
                            }
                            .background(Color.white)
                            
                            Divider()
                                .padding(.leading, 16)
                        }
                        
                        // 最後のメニュー項目の下の罫線
                        Divider()
                            .padding(.leading, 16)
                    }
                    .background(Color.white)
                }
                .background(Color.white)
                
                // 画面の下まで表示するための余白
                Spacer()
                    .background(Color.white)
            }
            .background(Color.white)
            .navigationBarBackButtonHidden(true)
            .navigationDestination(for: String.self) { destination in
                if destination == "DocumentList" {
                    DocumentListView(navigationPath: $navigationPath)
                }
            }
        }
    }
}

#Preview {
    Others()
}

