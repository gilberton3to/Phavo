//
//  teste.swift
//  Phavo
//
//  Created by Gilberto Neto on 13/05/24.
//

import SwiftUI

struct teste: View {
    var symbolName: String
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        .navigationBarItems(trailing: symbolName)
    }
}

#Preview {
    teste()
}
