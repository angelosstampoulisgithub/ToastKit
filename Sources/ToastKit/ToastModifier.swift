//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 30/12/25.
//

import Foundation
import SwiftUI

public struct ToastModifier: ViewModifier {

    @Binding var toast: Toast?
    @State private var workItem: DispatchWorkItem?

    public func body(content: Content) -> some View {
        ZStack {
            content

            if let toast {
                toastContainer(toast)
                    .transition(.move(edge: toast.position == .top ? .top : .bottom)
                                    .combined(with: .opacity))
                    .onAppear { scheduleDismiss(toast) }
            }
        }
        // Το animation πρέπει να μπει στο ZStack, αλλά με value = toast
        .animation(.easeInOut, value: toast != nil)
    }

    @ViewBuilder
    private func toastContainer(_ toast: Toast) -> some View {
        VStack {
            if toast.position == .bottom { Spacer() }

            ToastView(toast: toast)
                .padding(.horizontal)
                .padding(.vertical, 8)

            if toast.position == .top { Spacer() }
        }
        .padding()
    }

    private func scheduleDismiss(_ toast: Toast) {
        workItem?.cancel()

        let task = DispatchWorkItem {
            withAnimation { self.toast = nil }
        }

        workItem = task
        DispatchQueue.main.asyncAfter(deadline: .now() + toast.duration, execute: task)
    }
}

