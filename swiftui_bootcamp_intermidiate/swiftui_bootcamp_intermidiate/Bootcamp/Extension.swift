//
//  Extension.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 05/10/23.
//

import Foundation
import SwiftUI
extension Color {
    static func random() -> Color {
        return Color(red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1))
    }
}
