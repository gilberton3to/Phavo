//
//  AgendaView.swift
//  Phavo
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 13/05/24.
//

import SwiftUI

struct AgendaView: View {
    @StateObject var tasksModel = TasksModel()
    @State var currentDate: Date = Date()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    Color.grayFundo
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                        .frame(width: 400, height: 500)
                    MyDataPicker(currentDate: currentDate)
                        .environmentObject(tasksModel)
                        .padding()
                }
            }
                .safeAreaInset(edge: .bottom) {
                    HStack {
                        Button {
                            // Adicionar Tarefa action
                        } label: {
                            Text("Adicionar Tarefa")
                                .fontWeight(.bold)
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(Color("Yellow"), in: Capsule())
                        }
                        Button {
                            // Adicionar Lembrete action
                        } label: {
                            Text("Adicionar Lembrete")
                                .fontWeight(.bold)
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(Color("YellowFazendo"), in: Capsule())
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                    .foregroundColor(.white)
                    .background(.ultraThinMaterial)
                }
        }
    }
}

struct AgendaView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaView()
            .environmentObject(TasksModel())
    }
}
