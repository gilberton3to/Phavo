import SwiftUI

struct Semana {
    var segEntrada: String
    var segSaida: String
    // ...
}

struct PontoModel {
    var semanas: [Semana]
}

struct PontoView: View {
    var body: some View {
        Color.grayFundo
            .overlay {
                VStack {
                    HStack {
                        VStack {
                            CardPonto(color: .yellowAbrir, text: "Abrir ponto",
                                      icone: "door.left.hand.open", buttonAction: {})
                            CardPonto(color: .yellowIntervalo, text: "Intervalo",
                                      icone: "fork.knife", buttonAction: {})
                        }
                        VStack {
                            CardPonto(color: .yellowPrincipal, text: "Fechar ponto",
                                      icone: "door.left.hand.closed", buttonAction: {})
                            CardPonto(color: .yellowFalta, text: "Justificar falta",
                                      icone: "exclamationmark.bubble.fill", buttonAction: {})
                        }
                    }
                    .padding(.top, -120)
                    Text("Seus horários")
                        .padding(.top, 49)
                        .padding(.trailing, 270)
                    RoundedRectangle(cornerRadius: 22)
                        .frame(width: 388, height: 248.32)
                        .foregroundStyle(.whitePhavo)
                        .overlay {
                            PontoConfig()
                        }
                }.navigationTitle("Controle do ponto")
                    .navigationBarTitleDisplayMode(.inline)
                .padding()
                Spacer()
            }.ignoresSafeArea()
    }
}

#Preview {
    NavigationStack {
        PontoView()
    }
}
