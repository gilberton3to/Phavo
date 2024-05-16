//
//  Profile.swift
//  Phavo
//
//  Created by Gilberto Neto on 09/05/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Color.grayFundo
            .navigationBarTitle("Perfil")
            .overlay {
                VStack(alignment: .center, spacing: 40) {
                    Image("elis")
                        .resizable()
                        .cornerRadius(200)
                        .frame(height: 130)
                        .frame(maxWidth: 130)
                        .offset(x: 0, y: 42)
                    Text("Elis Ionara")
                        .font(.system(size: 30, design: .rounded))
                        .bold()
                        .foregroundStyle(.black)
                        .offset(x: 0, y: 15)
                    Text("UX/UI Design\nApple Developer Academy")
                        .font(.system(size: 15.5, weight: .medium, design: .default))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.center)
                        .offset(x: 0, y: -25)
                        .frame(height: 50)
                    TableView(color: .white, text: "Dados Pessoais", icone:
                                "person.text.rectangle.fill", largura: 20, altura: 15)
                    .offset(x: 0, y: -41)
                    TableView2()
                        .offset(x: 0, y: -62)
                        .frame(width: 394, height: 132)
                    TableView3()
                        .offset(x: 0, y: -81)
                    .frame(width: 394, height: 88)
                    TableView(color: .white, text: "Configurações", icone: "gearshape.fill", largura: 20, altura: 20)
                        .offset(x: 0, y: -100)
                }
            }
    }
}
#Preview {
    ProfileView()
        .ignoresSafeArea()
}
