//
//  CardComunicados.swift
//  Phavo
//
//  Created by Gabriel Oliveira Plutarco on 08/05/24.
//
// swiftlint:disable all
// Duvidas: 1 animação do card quando expande
//          2 pq o sheet nao abre quando aperta em editar no context menu?
//          3 como mudar a cor do apagar e da image de trash dentro do context menu?
//          4 expandir e retrair tao bugando, como resolver?
//          5 achatar as barras dentro da sheetview
import SwiftUI

struct CardComunicados: View {
    @State var isExpanded: Bool = false
    @State var showingSheet: Bool = false
    var image: String
    var title: String
    var text: String
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                HStack {
                Image("Davi")
                        .resizable()
                        .frame(width: 27, height: 27)
                        .padding(.leading, -2)
                Text(title)
                        .bold()
                        .padding(.leading, 14)
                    Spacer()
                    Button(action: {
                        withAnimation {
                            isExpanded.toggle()
                        }
                       // line = 7
                    }, label: {
                        Circle()
                            .fill(.yellowPrincipal)
                            .frame(width: 31, height: 31)
                            .overlay {
                                Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                                    .foregroundStyle(.white)
                            }
                    })
                }.padding()
                Divider()
                    .frame(height: 1)
                    .foregroundStyle(.gray)
                Text(text)
                    .lineLimit(isExpanded ? nil : 2)
                    .padding()
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 22)
                    .fill(.whitePhavo)
            }
        }.sheet(isPresented: $showingSheet, content: {
            SheetComunicados(title: "Editar comunicado", titulo: .constant(""), descricao: .constant(""))
        })
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                showingSheet.toggle()
            }, label: {
                HStack {
                    Text("Editar")
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }
            })
            if isExpanded {
                Button(action: {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }, label: {
                    HStack {
                        Text("Retrair")
                        Spacer()
                        Image(systemName: "rectangle.compress.vertical")
                    }
                }
                )} else {
                    Button(action: {
                        withAnimation {
                            isExpanded.toggle()
                        }
                    }, label: {
                        HStack {
                            Text("Expandir")
                            Spacer()
                            Image(systemName: "rectangle.expand.vertical")
                        }
                    }
                    )}
            Button(role: .destructive,
                   action: {},
                   label: {
                HStack {
                Text("Apagar")
                    .foregroundStyle(.red)
                Spacer()
                Image(systemName: "trash")
                    .foregroundStyle(.red)
            }
            })
        }))
    }
}

#Preview {
    NavigationStack {
        CardComunicados( image: "Davi",
                         title: "Microondas da cozinha",
                         text: "O microondas quebrou! Há a possibilidade de contactar o setor de patrimônio? Ele papocou, preocupado, eu desliguei da tomada. Tomem cuidado, hoje o almoço será frio!")
            .padding()
            .background(.black)
    }
}
// swiftlint:enable all
