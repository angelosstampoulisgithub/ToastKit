//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 30/12/25.
//

import Foundation
import SwiftUI

public struct ToastStyle {
    public let background: Color
    public let textColor: Color

    public init(background: Color, textColor: Color) {
        self.background = background
        self.textColor = textColor
    }

    public static let `default` = ToastStyle(
        background: Color.black.opacity(0.85),
        textColor: .white
    )

    public static let success = ToastStyle(
        background: Color.green.opacity(0.85),
        textColor: .white
    )

    public static let error = ToastStyle(
        background: Color.red.opacity(0.85),
        textColor: .white
    )
}
