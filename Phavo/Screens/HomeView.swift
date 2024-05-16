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
                .padding(25)
                VStack {
                    HStack {
                        Text("Seu rendimento")
                            .font(.system(size: 19))
                            .padding(.leading, 25)
                            .padding(.bottom, 10)
                            .padding(.top, 20)
                        Spacer()
                        Text("2024.1")
                            .font(.system(size: 13))
                            .foregroundStyle(.whitePhavo)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.grayBackground)
                                    .frame(width: 56, height: 20)
                            }
                            .padding(.trailing, 10)
                        Text("2024.2")
                            .foregroundStyle(.whitePhavo)
                            .font(.system(size: 13))
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.gray)
                                    .frame(width: 56, height: 20)
                            }
                            .padding(.trailing, 38)
                    }
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 380, height: 158)
                        .padding(.top, -4)
                }
                .padding(.top, -28)
                VStack {
                    HStack {
                        Text("Eventos")
                            .font(.system(size: 19))
                            .padding(.trailing, 310)
                            .padding(.bottom, 80)
                            .padding(.top, 20)
                    }
                    WidgetAgenda()
                        .buttonStyle(PlainButtonStyle())
                }
                .padding(.top, 05)
                HStack {
                    Text("Seus projetos")
                        .padding(.bottom, 10)
                        .padding(.leading, -174)
                        .padding(.top, 20)
                        .font(.system(size: 19))
                    Image(systemName: "plus.square.fill")
                        .padding(.trailing, 120)
                        .padding(.top, 10)
                        .foregroundStyle(.amareloQueimado)
                        .frame(width: 21, height: 24)
                }
                .padding(.top, 80)
                NavigationLink(destination: ProjetoView()) {
                    CardProjetos()
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.top, 120)
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
