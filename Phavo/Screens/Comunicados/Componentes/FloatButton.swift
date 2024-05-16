//
//  FloatButton.swift
//  Phavo
//
//  Created by Gabriel Oliveira Plutarco on 09/05/24.
//

import SwiftUI

struct FloatButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Circle()
                .frame(width: 72, height: 72)
                .foregroundStyle(.yellowPrincipal)
                .overlay {
                    Image(systemName: "plus")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 27, height: 31)
                }
        })
    }
}

#Preview {
    FloatButton(action: {})
}
