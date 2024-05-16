//
//  GreetingsView.swift
//  Phavo
//
//  Created by Gilberto Neto on 09/05/24.
//

import SwiftUI

struct GreetingsView: View {
    var body: some View {
        ZStack {
            Color.grayFundo
            Image("phavologo")
                .resizable()
                .padding()
                .frame(height: 230)
                .frame(maxWidth: 230)
        }
    }

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
            .ignoresSafeArea()
        }
    }
}
#Preview {
    GreetingsView()
        .ignoresSafeArea()
}
