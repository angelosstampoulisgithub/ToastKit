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
                VStack {
                    if toast.position == .bottom { Spacer() }

                    ToastView(toast: toast)
                        .transition(.opacity.combined(with: .scale))

                    if toast.position == .top { Spacer() }
                }
                .padding()
                .onAppear {
                    scheduleDismiss(toast)
                }
            }
        }
        .animation(.easeInOut, value: toast != nil)
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
