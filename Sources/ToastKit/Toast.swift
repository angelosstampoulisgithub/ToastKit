//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 30/12/25.
//

import Foundation

public struct Toast {
    public let message: String
    public let duration: TimeInterval
    public let position: ToastPosition
    public let style: ToastStyle

    public init(
        message: String,
        duration: TimeInterval = 2.0,
        position: ToastPosition = .center,
        style: ToastStyle = .default
    ) {
        self.message = message
        self.duration = duration
        self.position = position
        self.style = style
    }
}
