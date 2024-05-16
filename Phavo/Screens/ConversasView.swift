//
//  ConversasView.swift
//  Phavo
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 15/05/24.
//

import SwiftUI

struct ConversasView: View {
    @State private var chat: String = ""
    @State private var msg: String = ""
    var body: some View {
            VStack {
                // conversas
                VStack {
                    // bloco1
                    VStack {
                        Text("Ontem 7:45")
                            .font(.system(size: 12))
                            .padding(.top, 24)
                            .foregroundStyle(.cinzaDataMensagem)
                        Text("Já to chegando!")
                            .font(.system(size: 19.6))
                            .frame(width: 169, height: 35, alignment: .leading)
                            .padding(.leading)
                            .background(.conversaFundo)
                            .cornerRadius(20)
                            .padding(.trailing, 230)
                            .padding(.top, 13)
                    }
                    // bloco2
                    VStack {
                        Text("Ontem 7:45")
                            .font(.system(size: 12))
                            .padding(.top, 24)
                            .foregroundStyle(.cinzaDataMensagem)

                        Text("O lab já tá trancado!")
                            .font(.system(size: 19.6))
                            .frame(width: 204, height: 35, alignment: .leading)
                            .padding(.leading)
                            .background(.conversaFundo)
                            .cornerRadius(20)
                            .padding(.trailing, 195)
                            .padding(.top, 13)
                    }
                    // bloco3
                    VStack {
                        Text("Hoje 8:55")
                            .font(.system(size: 12))
                            .padding(.top, 24)
                            .foregroundStyle(.cinzaDataMensagem)
                        Text("Bom dia Carol! Alguma novidade a respeito da reunião?")
                            .foregroundStyle(.white)
                            .font(.system(size: 19.6))
                            .frame(width: 300, height: 65, alignment: .leading)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            .background(.amareloMensagemEmviada)
                            .cornerRadius(20)
                            .padding(.leading, 105)
                            .padding(.top, 13)
                        Text("Ainda não fiquei sabendo de nada")
                            .foregroundStyle(.white)
                            .font(.system(size: 19.6))
                            .frame(width: 306, height: 39, alignment: .leading)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            .background(.amareloMensagemEmviada)
                            .cornerRadius(20)
                            .padding(.leading, 95)
                            .padding(.top, -4.31)
                        Text("Lida 8:56")
                            .font(.system(size: 12))
                            .padding(.top, 4)
                            .foregroundStyle(.cinzaDataMensagem)
                            .padding(.leading, 355)
                        Text("Oi Elis, nossa reunião vai ficar para às 14:30! Bom já avisar para todos!")
                            .font(.system(size: 19.6))
                            .frame(width: 362, height: 61, alignment: .leading)
                            .padding(.leading, 14)
                            .background(.conversaFundo)
                            .cornerRadius(20)
                            .padding(.trailing, 43)
                            .padding(.top, 7)
                        if !msg.isEmpty {
                            Text(msg)
                                .foregroundStyle(.white)
                                .font(.system(size: 19.6))
                                .frame(width: 180, height: 35, alignment: .leading)
                                .padding(.leading, 14)
                                .padding(.trailing, 5)
                                .background(.amareloMensagemEmviada)
                                .cornerRadius(20)
                                .padding(.leading, 215)
                                .padding(.top, 17)
                            Text("Lida 8:56")
                                .font(.system(size: 12))
                                .padding(.top, 4)
                                .foregroundStyle(.cinzaDataMensagem)
                                .padding(.leading, 355)
                        }
                    }
                    Spacer()
                    HStack {
                        TextField("Nova mensagem", text: $chat)
                        Button(action: {
                            msg = chat
                            chat = ""
                        }, label: {
                            Image(systemName: "paperplane.fill")
                                .foregroundStyle(.amareloQueimado)
                        })
                    }
                    .padding(.horizontal)
                }
        }
            .navigationBarTitle("Carolina Barbalho", displayMode: .inline)
            .navigationBarItems(trailing: HStack {
                Button {
                    print("oi")
                } label: {
                    Image(systemName: "phone.fill")
                }
                Button {
                    print("oi")
                } label: {
                    Image(systemName: "video.fill.badge.plus")
                }
            })
    }
}
#Preview {
    ConversasView()
}
