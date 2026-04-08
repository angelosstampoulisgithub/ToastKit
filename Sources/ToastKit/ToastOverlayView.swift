//
//  SwiftUIView.swift
//
//
//  Created by Angelos Staboulis on 9/4/26.
//

import SwiftUI

struct ToastOverlayView: View {
    let message: String
    
    var body: some View {
        Text(message)
            .foregroundColor(.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .cornerRadius(12)
            .shadow(radius: 4)
            .transition(.move(edge: .top).combined(with: .opacity))
    }
}



