//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 9/4/26.
//

import Foundation
import SwiftUI
final class ToastManager: ObservableObject {
    @Published var message: String? = nil

    func show(_ text: String, duration: Double = 2.0) {
        withAnimation {
            message = text
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            withAnimation {
                self.message = nil
            }
        }
    }
}
