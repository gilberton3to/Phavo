//
//  AgendaView.swift
//  Phavo
//
//  Created by Gilberto Neto on 14/05/24.
//

import SwiftUI

struct AgendaView: View {
    @StateObject var tasksModel = TasksModel()
    @State var currentDate: Date = Date()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 435)
                        .padding(.trailing, 0)
                        .padding(.bottom, 0)
                        .padding(.top, 40)
                    MyDataPicker(currentDate: currentDate)
                        .environmentObject(tasksModel)
                        .padding(.horizontal, 27)
                        .padding(.bottom, 0)
                        .padding(.top, 65)
                }
            }
            .background(Color.grayFundo)
            .safeAreaInset(edge: .bottom) {
//                HStack {
//                    Button {
//                        // Adicionar Tarefa action
//                    } label: {
//                        Text("Adicionar Tarefa")
//                            .fontWeight(.bold)
//                            .padding(.vertical)
//                            .frame(maxWidth: .infinity)
//                            .background(Color("Yellow"), in: Capsule())
//                    }
//                    Button {
//                        // Adicionar Lembrete action
//                    } label: {
//                        Text("Adicionar Lembrete")
//                            .fontWeight(.bold)
//                            .padding(.vertical)
//                            .frame(maxWidth: .infinity)
//                            .background(Color("YellowFazendo"), in: Capsule())
//                    }
//                }
//                .padding(.horizontal)
//                .padding(.top, 10)
//                .foregroundColor(.white)
//                .background(.ultraThinMaterial)
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
