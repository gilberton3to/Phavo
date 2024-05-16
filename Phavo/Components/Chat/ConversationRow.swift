//
//  ConversationRow.swift
//  Phavo
//
//  Created by Kelly Letícia Nascimento de Morais on 14/05/24.
//

import SwiftUI

struct ConversationRow: View {

    let conversation: Conversation
    var body: some View {
        Button(action: {
            print("")
        }, label: {
            HStack(alignment: .top, spacing: 0) {
                ZStack {
                    Image(conversation.profileImage)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Circle()// Circle
                        .fill(conversation.status.color) // Circle
                        .stroke(Color.grayFundo, lineWidth: 3)
                        .frame(width: 15, height: 15)
                        .offset(x: 17, y: 18)
                }
                .padding(.trailing, 15)
                VStack(alignment: .leading, spacing: 0) {
                    Text(conversation.name)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundStyle(.black)
                        .lineLimit(1)
                    Text(conversation.lastMessage)
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                }
                Spacer()
                HStack {
                    Text(conversation.lastMessageTime)
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                        .imageScale(.small)
                }
        }
        })
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 30, trailing: 10))
    }
}

#Preview {
    ConversationRow(
        conversation: Conversation(
            profileImage: "gabi",
            status: .ocupado,
            name: "Gabriela Bezerra",
            lastMessage: "SOCORRO TO COM FOME E TEM ALUNO AQUI",
            lastMessageTime: "12:59pm"
        )
    )
}
