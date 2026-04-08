//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 9/4/26.
//

import Foundation
import SwiftUI

public final class ToastManager: ObservableObject {
    @Published public var toast: Toast? = nil

    public init() {}

    public func show(_ message: String, duration: Double = 2.0) {
        withAnimation {
            toast = Toast(message: message)
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            withAnimation {
                self.toast = nil
            }
        }
    }
}
