import SwiftUI

struct LoginFormView: View {
    @Environment(\.dismiss) private var dismiss
    var onBack: (() -> Void)? = nil
    @State private var selectedLoginMethod: LoginMethod = .email
    @State private var emailOrId: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    @State private var rememberId: Bool = false
    @State private var showTopView = false

    var body: some View {
        Group {
            if showTopView {
                TopView()
            } else {
                ZStack {
                    Color.white.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 40) {
                // Back Button (left-top)
                HStack(spacing: 0) {
                    Button(action: {
                        if let onBack { onBack() } else { dismiss() }
                    }) {
                        ZStack {
                            // 28x28 inner area as per design hint
                            Image(systemName: "chevron.left")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.black)
                                .frame(width: 28, height: 28)
                        }
                        .frame(width: 48, height: 48)
                    }
                    .padding(.leading, -16) // 左に詰める
                    Spacer()
                }
                VStack(alignment: .leading, spacing: 16) {
                    Text("ログイン")
                        .font(Font.custom("SF Pro", size: 24).weight(.bold))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))

                    // タブ（メール/電話）
                    VStack(alignment: .leading, spacing: 16) {
                        // タブ（メール/電話の切替）
                        VStack(alignment: .leading, spacing: 0) {
                            HStack(spacing: 0) {
                                Button {
                                    selectedLoginMethod = .email
                                } label: {
                                    VStack(spacing: 0) {
                                        Text("メールアドレス／ID")
                                            .font(Font.custom("SF Pro", size: 16).weight(.bold))
                                            .foregroundColor(selectedLoginMethod == .email ? Color(red: 0.18, green: 0.42, blue: 1) : Color(red: 0.30, green: 0.36, blue: 0.47))
                                            .frame(width: 164)
                                            .padding(.vertical, 12)
                                        
                                        Rectangle()
                                            .fill(selectedLoginMethod == .email ? Color(red: 0.18, green: 0.42, blue: 1) : Color(red: 0.84, green: 0.86, blue: 0.89))
                                            .frame(width: 164, height: selectedLoginMethod == .email ? 4 : 2)
                                            .cornerRadius(8)
                                    }
                                }

                                Button {
                                    selectedLoginMethod = .phone
                                } label: {
                                    VStack(spacing: 0) {
                                        Text("電話番号")
                                            .font(Font.custom("SF Pro", size: 16))
                                            .foregroundColor(selectedLoginMethod == .phone ? Color(red: 0.18, green: 0.42, blue: 1) : Color(red: 0.30, green: 0.36, blue: 0.47))
                                            .frame(width: 164)
                                            .padding(.vertical, 12)
                                        
                                        Rectangle()
                                            .fill(selectedLoginMethod == .phone ? Color(red: 0.18, green: 0.42, blue: 1) : Color(red: 0.84, green: 0.86, blue: 0.89))
                                            .frame(width: 164, height: selectedLoginMethod == .phone ? 4 : 2)
                                            .cornerRadius(8)
                                    }
                                }
                            }
                        }
                        .padding(.bottom, 24)

                        // 入力フィールド
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                if selectedLoginMethod == .email {
                                    TextField("メールアドレス／ID", text: $emailOrId)
                                        .textContentType(.oneTimeCode)
                                        .keyboardType(.emailAddress)
                                        .textInputAutocapitalization(.never)
                                        .disableAutocorrection(true)
                                        .submitLabel(.return)
                                        .onSubmit {
                                            hideKeyboard()
                                        }
                                } else {
                                    TextField("電話番号", text: $phoneNumber)
                                        .textContentType(.telephoneNumber)
                                        .keyboardType(.phonePad)
                                        .submitLabel(.return)
                                        .onSubmit {
                                            hideKeyboard()
                                        }
                                }
                            }
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                            .frame(height: 56)
                            .background(.white)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.5)
                            )
                        }

                        // パスワード
                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                Group {
                                    if showPassword {
                                        TextField("パスワード", text: $password)
                                            .textContentType(.password)
                                            .submitLabel(.return)
                                            .onSubmit {
                                                hideKeyboard()
                                            }
                                    } else {
                                        SecureField("パスワード", text: $password)
                                            .textContentType(.password)
                                            .submitLabel(.return)
                                            .onSubmit {
                                                hideKeyboard()
                                            }
                                    }
                                }

                                Button(action: { showPassword.toggle() }) {
                                    Text("表示")
                                        .font(Font.custom("SF Pro", size: 14).weight(.bold))
                                        .foregroundColor(Color(red: 0.18, green: 0.42, blue: 1))
                                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                                        .background(Color(red: 0.89, green: 0.95, blue: 1))
                                        .cornerRadius(20)
                                }
                            }
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                            .frame(height: 56)
                            .background(.white)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.5)
                            )

                            // 次回ログイン時、IDの入力を省略
                            Toggle(isOn: $rememberId) {
                                Text("次回ログイン時、IDの入力を省略")
                                    .font(Font.custom("SF Pro", size: 16))
                                    .foregroundColor(.black)
                            }
                            .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        }
                    }
                }

                // ボトムアクション
                VStack(spacing: 16) {
                    Button(action: {
                        showTopView = true
                    }) {
                        HStack(spacing: 10) {
                            Text("ログイン")
                                .font(Font.custom("SF Pro", size: 16).weight(.bold))
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(16)
                        .background(Color(red: 0.18, green: 0.42, blue: 1))
                        .cornerRadius(50)
                    }

                    VStack(spacing: 0) {
                        Button(action: {}) {
                            Text("パスワードをお忘れの方")
                                .font(Font.custom("SF Pro", size: 16))
                                .foregroundColor(Color(red: 0.18, green: 0.42, blue: 1))
                                .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        }

                        Button(action: {}) {
                            Text("お困りですか？ お問い合わせ")
                                .font(Font.custom("SF Pro", size: 16))
                                .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                                .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        }
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
            }
            .padding(EdgeInsets(top: 8, leading: 24, bottom: 16, trailing: 24))
            .padding(.top, -144) // 垂直位置を少し上へ調整
                }
                .ignoresSafeArea(.keyboard, edges: .bottom)
            }
        }
    }
}

private enum LoginMethod { case email, phone }

// キーボードを閉じる関数
private func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
}

#Preview {
    LoginFormView()
}


