//
//  EventoCard.swift
//  Phavo
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 13/05/24.
//

import SwiftUI

struct EventoCard: View {
    var body: some View {
        @State var data: String = "19 de agosto"
        @State var evento: String = "Challenge review"
        @State var hora: String = "10:45 - 12:00"
        Color.grayFundo
     .ignoresSafeArea()
     .overlay {
         ZStack {
             RoundedRectangle(cornerRadius: 13.68)
                 .fill(Color.white)
                 .frame(width: 381, height: 60.94)
             HStack {
                 VStack {
                     Text(data)
                         .font(.headline)
                         .font(.system(size: 16))
                         .padding(.trailing, 12)
                         .padding(.top, 8)
                         .padding(.bottom, 7)
                     Text(evento)
                         .font(.system(size: 14))
                         .foregroundStyle(.evento)
                         .padding(.bottom, 6)
                 }
                 .padding(.trailing, 130)
                 Text(hora)
                     .padding(.bottom, 30)
                     .foregroundStyle(.amareloQueimado)
                     .font(.system(size: 12))
                     .padding(.trailing, -5)
             }
         }
     }
    }
}

#Preview {
    EventoCard()
}
