//
//  WidgetLista.swift
//  Phavo
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 15/05/24.
//

import SwiftUI

struct WidgetLista: View {
    @State var tipo: Int
    var body: some View {
    ZStack {
                    RoundedRectangle(cornerRadius: 13.68)
                        .fill(Color.white)
                        .frame(width: 214, height: 112.77)
                    VStack {
                        VStack {
                            HStack {
                                Circle()
                                    .stroke(lineWidth: 1.54)
                                    .frame(width: 22, height: 22)
                                    .opacity(0.5)
                                    .foregroundStyle(.cinzaEvento)
                                Text("Revisar as telas")
                                    .font(.system(size: 15.23))
                            }
                            Divider().background(Color.gray)
                                .frame(width: 105)
                                .padding(.leading, 35)
                                .padding(.top, 2)
                        }
                        .padding(.bottom, -2)
                        .padding(.leading, -0.5)
                        VStack {
                            HStack {
                                Circle()
                                    .stroke(lineWidth: 1.54)
                                    .frame(width: 22, height: 22)
                                    .opacity(0.5)
                                    .foregroundStyle(.cinzaEvento)
                                Text("Decidir a fontes")
                                    .font(.system(size: 15.23))
                            }
                            Divider().background(Color.gray)
                                .frame(width: 105)
                                .padding(.leading, 35)
                                .padding(.top, 2)
                        }
                        .padding(.bottom, -2)
                        .padding(.leading, 1)
                        VStack {
                            HStack {
                                Circle()
                                    .stroke(lineWidth: 1.54)
                                    .frame(width: 22, height: 22)
                                    .opacity(0.5)
                                    .foregroundStyle(.cinzaEvento)
                                Text("Marcar reuniões")
                                    .font(.system(size: 15.23))
                        }
                            .padding(.leading, 5)
                        }
                    }
                    .padding(.trailing, 90)
            }
    }
}

#Preview {
    WidgetLista(tipo: 4)
}
