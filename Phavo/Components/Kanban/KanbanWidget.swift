//
//  KanbanWidget.swift
//  Phavo
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 13/05/24.
//

import SwiftUI

struct KanbanWidget: View {
    var body: some View {
        Color.grayFundo
            .ignoresSafeArea()
            .overlay {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 377, height: 177)
                    HStack {
                        VStack {
                            ZStack {
                                Circle()
                                    .fill(.yellowPrincipal)
                                    .frame(width: 38, height: 38)
                                Image(systemName: "list.bullet")
                                    .foregroundStyle(.white)
                            }
                            .padding(.leading, 10)
                            .padding(.bottom, 30)
                            VStack {
                                Text("7")
                                    .font(.system(size: 33.43))
                                    .bold()
                                Text("To-Do")
                                    .bold()
                                    .font(.system(size: 17))
                                    .foregroundStyle(.yellowPrincipal)
                                    .padding(.leading, 30)
                            }
                        }
                        .padding(.trailing, 30)
                        WidgetLista(tipo: 4)
                            .padding(.leading, 30)
                            .padding(.top, 20)
                    }
                }
            }
    }
}

#Preview {
    KanbanWidget()
}
