import SwiftUI

struct ProjetoView: View {
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
                        AgendaWidget()
                    }
                    .padding(.top, 170)
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
