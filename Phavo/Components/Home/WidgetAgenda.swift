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
                    RoundedRectangle(cornerRadius: 13.68)
                        .fill(Color.white)
                        .frame(width: 380, height: 157)
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
                            }
                            .padding(.leading, 50)
                            Spacer()
                            VStack {
                                Text("SEGUNDA, 20 DE MAI.")
                                    .font(.system(size: 12))
                                    .bold()
                                    .foregroundStyle(.cinzaWidgetAgenda)
                                HStack {
                                    Text("|")
                                        .bold()
                                        .padding(.trailing, -20)
                                    Text("Bridge")
                                        .font(.system(size: 15))
                                        .bold()
                                }
                                .foregroundStyle(.amareloQueimado)
                                .padding(.trailing, 80)
                            }
                            .padding(.top, -26)
                            .padding(.trailing, 55)
                        }
                        Text("Último dia de entregas.")
                            .foregroundStyle(.cinzaEvento)
                            .padding(.trailing, 150)
                            .padding(.top, 10)
                    }
                }
            }
    }
}

#Preview {
    WidgetAgenda()
}
