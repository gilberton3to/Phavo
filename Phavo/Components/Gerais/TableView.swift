//
//  TableView.swift
//  Phavo
//
//  Created by Gilberto Neto on 10/05/24.
//

import SwiftUI

struct TableView: View {
    let color: Color
    let text: String
    let icone: String
    let largura: CGFloat
    let altura: CGFloat
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(color)
            .frame(width: 393, height: 49.15)
            .overlay(alignment: .center) {
                HStack(alignment: .center, spacing: -18) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 7)
                            .fill(.yellowFazendo)
                            .frame(width: 30, height: 30)
                        Image(systemName: icone)
                            .resizable()
                            .frame(width: largura, height: altura)
                            .foregroundStyle(.white)
                            .padding()
                    }.padding(.horizontal, 6)
                    Text(text)
                        .foregroundStyle(.black)
                        .padding()
                    Spacer()
//                    Image(systemName: "chevron.right")
//                        .resizable()
//                        .frame(width: 9, height: 14)
//                        .bold()
//                        .foregroundStyle(.yellowFazendo)
//                        .padding()
                }
            }
    }
}

#Preview {
    TableView(color: .grayFundo, text: "Dados Pessoais", icone: "person.text.rectangle.fill", largura: 20, altura: 15)
    .ignoresSafeArea()
}
