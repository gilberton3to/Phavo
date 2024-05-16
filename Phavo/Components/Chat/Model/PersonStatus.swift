//
//  PersonStatus.swift
//  Phavo
//
//  Created by Kelly Letícia Nascimento de Morais on 14/05/24.
//

import Foundation
import SwiftUI

enum PersonStatus: String {
    case online
    case ocupado
    case ausente
    var color: Color {
        switch self {
        case .online:
            return Color.green
        case .ocupado:
            return Color.yellow
        case .ausente:
            return Color.red
        }
    }
}
