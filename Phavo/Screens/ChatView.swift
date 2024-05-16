//
//  ChatView.swift
//  Phavo
//
//  Created by Kelly Letícia Nascimento de Morais on 13/05/24.
//

import SwiftUI

struct ChatView: View {
    @State private var searchText = ""
    @State private var userStatus: PersonStatus = .online
    let conversations: [Conversation] = [
        Conversation(profileImage: "carol", status: .online, name: "Carolina Barbalho",
                     lastMessage: "Oi Elis, nossa reunião vai ser mais tarde 11 horas né?", lastMessageTime: "10:30"),
        Conversation(profileImage: "caren", status: .online, name: "Cáren Sousa",
                     lastMessage: "Qualquer coisa eu vou avisando!", lastMessageTime: "11:15"),
        Conversation(profileImage: "matty", status: .ocupado, name: "Mateus Rodrigues",
                     lastMessage: "Ok! Vou agendar.", lastMessageTime: "Ontem"),
        Conversation(profileImage: "lucas", status: .ausente, name: "Lucas Baptista",
                     lastMessage: "Vou te enviar agora, um instante.", lastMessageTime: "Ontem"),
        Conversation(profileImage: "david", status: .online, name: "David Augusto",
                     lastMessage: "Vamos para o happy hour?", lastMessageTime: "Sexta"),
        Conversation(profileImage: "gabi", status: .ocupado, name: "Gabriela Bezerra",
                     lastMessage: "Compartilha o link da apresentação!!!", lastMessageTime: "Sexta")
    ]
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button(action: {
                        print("")
                    }, label: {
                        Image("elis")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .padding(.leading, 5)
                    })
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Você")
                            .font(.system(size: 20))
                        HStack {
                            Text(userStatus.rawValue.localizedCapitalized)
                                .foregroundColor(.gray)
                            Circle()
                                .fill(userStatus.color)
                                .frame(width: 10, height: 10)
                        }
                    }
                    Spacer()
                    Menu {
                        Button("Online") {
                            userStatus = .online
                        }
                        Button("Ocupado") {
                            userStatus = .ocupado
                        }
                        Button("Ausente") {
                            userStatus = .ausente
                        }
                    } label: {
                        HStack {
                            Text("Alterar Status")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color(red: 0xF4 / 255, green: 0xAF / 255, blue: 0x46 / 255))
                                .imageScale(.medium)
                        }
                    }
                }
                .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.vertical, 18)
                ZStack {
                    VStack(alignment: .leading, spacing: 0) {
                        ForEach(conversations) { conversation in
                            NavigationLink(destination: ConversasView()) {
                                ConversationRow(conversation: conversation)
                            }
                            Divider().background(Color.gray)
                                .padding(.leading, 75)
                        }
                    }
                    .padding(.horizontal)
                    Spacer()
                        Button(action: {
                            print("")
                        }, label: {
                            NavigationLink(destination: ConversasView()) {
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.pink)
                                    .frame(width: 430, height: 88)
                                    .opacity(0.0)
                            }
                        })
                        .padding(.bottom, 460)
                }
            }
            .background(Color.grayFundo)
        }
        .background(Color.grayFundo)
        .navigationTitle("Conversas")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup {
                Button(action: {
                    print("")
                }, label: {
                    Image(systemName: "phone.fill")
                        .foregroundColor(Color(red: 0xDA / 255, green: 0x9C / 255, blue: 0x3F / 255))
                        .imageScale(.large)
                        .scaleEffect(1.1)
                })
                Button(action: {
                    print("")
                }, label: {
                    Image(systemName: "video.fill.badge.plus")
                            .foregroundColor(Color(red: 0xDA / 255, green: 0x9C / 255, blue: 0x3F / 255))
                            .imageScale(.large)
                            .scaleEffect(1.1)
                })
            }
        }
        .searchable(text: $searchText)
    }
}
#Preview {
    NavigationStack {
        ChatView()
    }
}
