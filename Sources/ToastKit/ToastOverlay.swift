//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 9/4/26.
//

import Foundation
import SwiftUI
struct ToastOverlay: ViewModifier {
    @ObservedObject var manager: ToastManager

    func body(content: Content) -> some View {
        ZStack {
            content

            if let message = manager.message {
                VStack {
                    ToastOverlayView(message:message)
                    Spacer()
                }
                .padding(.top, 40)
                .zIndex(999)
            }
        }
    }
}

extension View {
    func toast(manager: ToastManager) -> some View {
        self.modifier(ToastOverlay(manager: manager))
    }
}
