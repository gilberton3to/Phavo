import SwiftUI

enum PontoState {
    case presença
    case atraso
    case falta
    case naoChegou
    var color: Color {
        switch self {
        case .presença:
            return Color.green
        case .atraso:
            return Color.yellowPrincipal
        case .falta:
            return Color.red
        case .naoChegou:
            return Color.gray
        }
    }
}

struct Week {
    var states: [PontoState]
}

struct PontoConfig: View {
    let weeks: [Week] = []
    let week = Week(states: [.presença, .falta, .falta, .atraso, .presença])

    @State private var abrir: Bool = false
    @State private var fechar: Bool = false
    var body: some View {
        VStack {

            Text("Maio")
                .padding(.top, -10)
                .foregroundStyle(.yellowPrincipal)
                .bold()
                .font(.system(size: 20))
            HStack(spacing: -47) {
                VStack(spacing: 5) {
                    Text("Seg")
                    Text("Ter")
                    Text("Qua")
                    Text("Qui")
                    Text("Sex")
                }
                .foregroundStyle(.gray)
                .font(.system(size: 20))
                .padding(.leading, -110)
                HStack(spacing: 47) {
                    HStack {
                        VStack(spacing: 0) {
                            ForEach(week.states, id: \.self) { state in
                                Image("HexagonCinza")
                                    .renderingMode(.template)

                                    .resizable()
                                    .foregroundStyle(state.color)
                                    .frame(width: 16, height: 18)
                                    .padding(.bottom, 5)
                            }
                        }
                        .padding(.trailing, -6)
                        VStack(spacing: 0) {
                            ForEach(week.states, id: \.self) { state in
                                Image("HexagonCinza")
                                    .renderingMode(.template)
                                    .resizable()
                                    .foregroundStyle(state.color)
                                    .frame(width: 16, height: 18)
                                    .padding(.bottom, 5)
                            }
                        }.padding(.trailing, -6)
                    }

                    HStack {
                        VStack(spacing: 0) {
                            ForEach(week.states, id: \.self) { state in
                                Image("HexagonCinza")
                                    .renderingMode(.template)
                                    .resizable()
                                    .foregroundStyle(state.color)
                                    .frame(width: 16, height: 18)
                                    .padding(.bottom, 5)
                            }
                        }
                        .padding(.trailing, -6)
                        VStack(spacing: 0) {
                            ForEach(week.states, id: \.self) { state in
                                Image("HexagonCinza")
                                    .renderingMode(.template)
                                    .resizable()
                                    .foregroundStyle(state.color)

                                    .frame(width: 16, height: 18)
                                    .padding(.bottom, 5)
                            }
                        }
                        .padding(.trailing, -6)
                    }
                    HStack {
                        VStack(spacing: 0) {
                            ForEach(week.states, id: \.self) { state in
                                Image("HexagonCinza")
                                    .renderingMode(.template)
                                    .resizable()
                                    .foregroundStyle(state.color)
                                    .frame(width: 16, height: 18)
                                    .padding(.bottom, 5)
                            }
                        }
                        .padding(.trailing, -6)
                        VStack(spacing: 0) {
                            ForEach(week.states, id: \.self) { state in
                                Image("HexagonCinza")
                                    .renderingMode(.template)
                                    .resizable()
                                    .foregroundStyle(state.color)
                                    .frame(width: 16, height: 18)
                                    .padding(.bottom, 5)
                            }
                        }
                        .padding(.trailing, -6)
                    }
                    HStack {
                        VStack(spacing: 0) {
                            ForEach(week.states, id: \.self) { state in
                                Image("HexagonCinza")
                                    .renderingMode(.template)
                                    .resizable()
                                    .foregroundStyle(state.color)
                                    .frame(width: 16, height: 18)
                                    .padding(.bottom, 5)
                            }
                        }
                        .padding(.trailing, -6)
                        VStack(spacing: 0) {
                            ForEach(week.states, id: \.self) { state in
                                Image("HexagonCinza")
                                    .renderingMode(.template)
                                    .resizable()
                                    .foregroundStyle(state.color)
                                    .frame(width: 16, height: 18)
                                    .padding(.bottom, 5)
                            }
                        }
                        .padding(.trailing, -6)
                    }
                    .padding(.trailing, -900)
                }
            }.padding(.leading, 47)
            HStack {
                HStack {
                    Image("HexagonVerde")
                        .frame(width: 10, height: 10)
                        .padding(2)
                    Text("Presença")
                        .font(.system(size: 12))
                        .foregroundStyle(.cinzaEvento)
                        .padding(.leading, -5)
                }
                HStack {
                    Image("HexagonAmarelo")
                        .frame(width: 6, height: 6)
                        .padding(4)
                    Text("Atraso")
                        .font(.system(size: 12))
                        .foregroundStyle(.cinzaEvento)
                        .padding(.leading, -5)
                }
                HStack {
                    Image("HexagonVermelho")
                        .frame(width: 6, height: 6)
                        .padding(4)
                    Text("Falta")
                        .font(.system(size: 12))
                        .foregroundStyle(.cinzaEvento)
                        .padding(.trailing, 50)
                }
            }
            .padding(.trailing, -180)
        }
    }
}

#Preview {
    PontoConfig()
}
