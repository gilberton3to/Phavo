//
//  Conversation.swift
//  Phavo
//
//  Created by Kelly Letícia Nascimento de Morais on 14/05/24.
//

import Foundation

struct Conversation: Identifiable {
    let id = UUID()
    let profileImage: String
    let status: PersonStatus
    let name: String
    let lastMessage: String
    let lastMessageTime: String
}
