//
//  SwiftUIView.swift
//  
//
//  Created by Angelos Staboulis on 30/12/25.
//

import SwiftUI
struct ToastView: View {
    let toast: Toast

    var body: some View {
        Text(toast.message)
            .font(.subheadline)
            .foregroundColor(toast.style.textColor)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .fill(toast.style.background)
            )
            .shadow(radius: 4)
    }
}
