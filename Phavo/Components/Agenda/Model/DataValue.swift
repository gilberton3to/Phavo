//
//  DataValue.swift
//  Phavo
//
//  Created by Gilberto Neto on 14/05/24.
//

import SwiftUI
import Foundation

struct DateValue: Identifiable {
    var id = UUID().uuidString
    var day: Int
    var date: Date
}
