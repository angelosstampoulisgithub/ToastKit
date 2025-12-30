//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 30/12/25.
//

import Foundation
import SwiftUI

public extension View {
    func toast(_ toast: Binding<Toast?>) -> some View {
        self.modifier(ToastModifier(toast: toast))
    }
}
