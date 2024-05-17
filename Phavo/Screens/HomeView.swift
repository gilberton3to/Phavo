import SwiftUI

struct InicioView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Boa tarde, ")
                    + Text("Elis")
                        .foregroundColor(.yellowFazendo)
                    + Text("!")
                    Spacer()
                    NavigationLink(destination: Comunicados()) {
                        Image(systemName: "bubble.left.and.exclamationmark.bubble.right.fill")
                            .resizable()
                            .frame(width: 30)
                            .frame(height: 25)
                            .padding(.horizontal, 6)
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: ProfileView()) {
                        Image("elis")
                            .resizable()
                            .frame(width: 35)
                            .frame(height: 35)
                            .cornerRadius(100)
                            .foregroundColor(.black)
                    }
                }
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 22))
                .padding(.vertical, 25)
                .padding(.horizontal, 23)
                VStack {
                    HStack {
                        Text("Seu rendimento")
                            .font(.system(size: 19))
                            .padding(.leading, 25)
                            .padding(.bottom, 10)
                            .padding(.top, 20)
                        Spacer()
                        Text("2023.2")
                            .font(.system(size: 14.5))
                            .bold()
                            .foregroundStyle(.whitePhavo)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.grayBackground)
                                    .frame(width: 58, height: 21)
                            }
                            .padding(.trailing, 13)
                            .padding(.top, 9)
                        Text("2024.1")
                            .foregroundStyle(.whitePhavo)
                            .font(.system(size: 14.5))
                            .bold()
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.grayEscuro)
                                    .frame(width: 58, height: 21)
                            }
                            .padding(.trailing, 30)
                            .padding(.top, 9)
                    }
                    RoundedRectangle(cornerRadius: 22)
                        .fill(Color.white)
                        .frame(width: 360, height: 158)
                        .padding(.top, -4)
                }
                .padding(.top, -28)
                VStack {
                    HStack {
                        Text("Eventos")
                            .font(.system(size: 19))
                            .padding(.trailing, 272)
                            .padding(.bottom, 80)
                            .padding(.top, 20)
                    }
                    NavigationLink(destination: AgendaView()) {
                        WidgetAgenda()}
                }
                .padding(.top, 05)
                HStack {
                    Text("Seus projetos")
                        .padding(.bottom, 10)
                        .padding(.leading, -154)
                        .padding(.top, 35)
                        .font(.system(size: 19))
                    Image(systemName: "plus.square.fill")
                        .padding(.trailing, 80)
                        .padding(.top, 26.5)
                        .foregroundStyle(.amareloQueimado)
                        .frame(width: 21, height: 24)
                }
                .padding(.top, 65)
                NavigationLink(destination: ProjetoView()) {
                    CardProjetos()
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.top, 108)
                Spacer()
            }
        }.background(Color.grayFundo)
    }
}
#Preview {
    NavigationStack {
        InicioView()
    }
}
