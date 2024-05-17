import SwiftUI

struct ProjetoView: View {
    @StateObject var tasksModel = TasksModel()
    @State var currentDate: Date = Date()
    var body: some View {
        ScrollView {
            VStack {
                Text("Sistema de Monitoramento de Segurança para monitoramento/detecção atividades suspeitas na rede.")
                    .font(.system(size: 18))
                    .foregroundStyle(.letratexto)
                    .padding(.trailing, 13)
                    .padding(.leading, 13)
                    .padding(.bottom, 21)
                    .padding(.top, 26)
                VStack {
                    HStack {
                        Text("Jun")
                        Spacer()
                        Text("Dez")
                    }
                    .padding(.horizontal, 30)
                    .font(.system(size: 12))
                    Progresso(progress: 150, tam: 360, altura: 35, radius: 20,
                              color: .yellowPrincipal, colorFundo: .fundoProgresso)
                } .padding(.bottom, 30)
                VStack {
                    HStack {
                        Text("Kanban")
                        Geral()
                    }
                    .padding(.trailing, 250)
                    .padding(.bottom, 90)
                    NavigationLink(destination: KanbanView()) {
                        KanbanWidget()
                    }
                    .buttonStyle(PlainButtonStyle())
                    Text("Agenda do projeto")
                        .padding(.top, 110)
                        .padding(.trailing, 220)
                        .padding(.bottom, 15)
                    VStack {
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
                    .padding(.top, -40)
                }
            }
            .navigationBarTitle("Projeto1", displayMode: .inline)
            .navigationBarItems(trailing: HStack(spacing: -20) {
                Button {
                    print("oi")
                } label: {
                    Image("carol")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .clipShape(Circle())
                }
                Button {
                    print("oi")
                } label: {
                    Image("elis")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .clipShape(Circle())
                }
                Button {
                    print("oi")
                } label: {
                    Image("Davi")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .clipShape(Circle())
                }
                Button {
                    print("oi")
                } label: {
                    Image("Mateus")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .clipShape(Circle())
                }
                .padding(.trailing, 10)
            })
    }
    .background(Color.grayFundo)
    }
}

#Preview {
    NavigationStack {
        ProjetoView()
    }
}
