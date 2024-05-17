//
//  WidgetAgenda.swift
//  Phavo
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 13/05/24.
//

import SwiftUI

struct WidgetAgenda: View {
    var body: some View {
        Color.grayFundo
            .ignoresSafeArea()
            .overlay {
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .fill(Color.white)
                        .frame(width: 360, height: 157)
                    VStack {
                        HStack {
                            VStack {
                                Text("SEXTA-FEIRA")
                                    .font(.system(size: 14.35))
                                    .bold()
                                    .foregroundStyle(.amareloQueimado)
                                Text("17")
                                    .font(.system(size: 37))
                                    .padding(.trailing, 50)
                                    .foregroundColor(.black)
                            }
                            .padding(.leading, 33)
                            Spacer()
                            VStack {
                                Text("SEGUNDA, 20 DE MAI.")
                                    .font(.system(size: 12))
                                    .bold()
                                    .foregroundStyle(.cinzaWidgetAgenda)
                                    .padding(.trailing, -22)
                                HStack {
                                    Text("|")
                                        .bold()
                                        .fontDesign(.rounded)
                                        .padding(.trailing, -22)
                                    Text("Bridge")
                                        .font(.system(size: 15))
                                        .bold()
                                }
                                .foregroundStyle(.amareloQueimado)
                                .padding(.trailing, 55)
                            }
                            .padding(.top, -26)
                            .padding(.trailing, 65)
                        }
                        Text("Último dia de entregas.")
                            .foregroundStyle(.cinzaEvento)
                            .font(.system(size: 16))
                            .padding(.trailing, 160)
                            .padding(.top, 10)
                    }
                }
            }
    }
}

#Preview {
    WidgetAgenda()
}
