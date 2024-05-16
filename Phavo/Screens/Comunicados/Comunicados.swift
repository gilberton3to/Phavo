//
//  Comunicados.swift
//  Phavo
//
//  Created by Gabriel Oliveira Plutarco on 08/05/24.
//
// dps do rendimento adicionar mensagem no comunicados
// swiftlint:disable all
// melhorar a questao da foto no comunicados
import SwiftUI

struct Comunicados: View {
    @State private var showingSheet = false
    @State var title = "Microondas da cozinha"
    @State var text = "O microondas quebrou! Há a possibilidade de contactar o setor de patrimônio? Ele papocou, preocupado, eu desliguei da tomada. Tomem cuidado, hoje o almoço será frio!"
    var body: some View {
        ZStack {
            VStack {
                CardComunicados( image: "Davi", title: title, text: text )
                    .padding()
            }
            FloatButton(action: {
                showingSheet.toggle()
            }).sheet(isPresented: $showingSheet, content: {
                SheetComunicados(title: "Adicionar Comunidade", titulo: $title, descricao: $text)
            })
                .padding(.top, 700)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .background(Color.grayFundo)
        .navigationTitle("Comunicados")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(false)
    }
}

#Preview {
    NavigationStack {
        Comunicados()
    }
}
// melhorar espaçamentos dos itens
// swiftlint:enable all
// melhorar visualização da animação
