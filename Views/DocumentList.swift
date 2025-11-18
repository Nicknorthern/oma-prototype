//
//  DocumentList.swift
//  oma-prototype
//
//  Created with CURSOR
//

import SwiftUI

struct DocumentListView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var navigationPath: NavigationPath
    
    init(navigationPath: Binding<NavigationPath>? = nil) {
        if let navigationPath = navigationPath {
            self._navigationPath = navigationPath
        } else {
            self._navigationPath = .constant(NavigationPath())
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // ヘッダー
            HStack {
                Button(action: {
                    if !navigationPath.isEmpty {
                        navigationPath.removeLast()
                    } else {
                        dismiss()
                    }
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
            
            // メインコンテンツ
            ScrollView {
                VStack {
                    Text("Document List")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.black)
                        .padding()
                }
                .background(Color.white)
            }
            .background(Color.white)
            
            Spacer()
                .background(Color.white)
        }
        .background(Color.white)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DocumentListView()
}

