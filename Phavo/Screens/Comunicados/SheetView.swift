//
//  SheetView.swift
//  Phavo
//
//  Created by Gabriel Oliveira Plutarco on 10/05/24.
//

import SwiftUI

struct SheetComunicados: View {
    @Environment(\.dismiss) var dismiss
    @State private var selectedTeam = "Equipe 1"
    let themes = ["Geral", "Equipe 2", "Equipe 3"]
    let types = ["Projeto", "Projeto 2"]
    var title: String
    @State private var showToggle: Bool = true
    @State private var selectedProject: Bool = true
    @Binding var titulo: String
    @Binding var descricao: String
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    TextField("Título", text: $titulo)
                        .padding(.leading, 10)
                        .onSubmit {
                        }
                    Divider()
                    TextField("Descrição", text: $descricao)
                        .padding(.leading, 10)
                        .lineLimit(2, reservesSpace: true)
                }.padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.whitePhavo)
                )
                    .padding()
                VStack {
                        Toggle(isOn: $showToggle, label: {
                            /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
                        }
                        ).padding()
                        .tint(.yellowPrincipal)
                    Divider()
                    HStack {
                        Text("Equipe")
                            .padding()
                        Spacer()
                        Picker("Equipe", selection: $selectedTeam) {
                            ForEach(themes, id: \.self) {
                                Text($0)}
                        }.tint(.gray)
                    }
                    Divider()
                    HStack {
                        Text("Tipo")
                            .padding()
                        Spacer()
                        Picker("Tipo", selection: $selectedProject) {
                                    ForEach(types, id: \.self) {
                                        Text($0)
                            }
                        }.tint(.gray)
                    }
            }.background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.whitePhavo)
                    .frame(height: 200)
            )
                .padding()
                HStack {
                    Text("Anexos")
                        .padding()
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.gray)
                    }).padding()
                }.padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                    .fill(.whitePhavo)
                    .padding()
                )
                Spacer()
            }.background(Color.grayFundo)
                .navigationTitle(title)
                .toolbarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(id: "Cancelar", placement: .topBarLeading, content: {
                        Button(action: {
                        dismiss()
                    }, label: {
                        Text("Cancelar")
                            .foregroundStyle(.yellowPrincipal)
                    })}
                    )
                    ToolbarItem(id: "Adicionar", content: {
                        Button(action: {}, label: {
                            Text("Adicionar")
                                .foregroundStyle(.gray)
                        })
                    })
                }
        }
    }
}

#Preview {
    SheetComunicados( title: "Novo Comunicado", titulo: .constant(""), descricao: .constant(""))
}
