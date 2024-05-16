//
//  TableView2.swift
//  Phavo
//
//  Created by Gilberto Neto on 10/05/24.
//

import SwiftUI

struct TableView2: View {
    let listaComIcones = [
        ("Controle de Finanças", "dollarsign.circle.fill"),
        ("Rendimento de Trabalho", "chart.bar.xaxis"),
        ("Histórico de Projetos", "clock.fill")
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(listaComIcones, id: \.0) { item in
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 7)
                                    .fill(.yellowFazendo)
                                    .frame(width: 30, height: 30)
                                Image(systemName: item.1)
                                    .foregroundColor(.white)
                            } .offset(x: -3, y: 0)
                            Text(item.0)
                                .offset(x: 6, y: 0)
                        }
                }.listSectionSeparator(.hidden, edges: [.top, .bottom])
            }
        }.cornerRadius(12.0)
        .listStyle(PlainListStyle())
        .background(Color.clear)
        .scrollDisabled(true)
        .listRowSeparator(.hidden, edges: .bottom)
    }
}
#Preview {
    TableView2()
}
