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
    
  //  @State var pontoModel = PontoModel()
    
    var body: some View {
        Color.grayFundo
            .overlay{
                VStack {
                    HStack{
                        VStack{
                            CardPonto(color: .yellowAbrir, text: "Abrir ponto", icone: "door.left.hand.open", buttonAction: {})
                            CardPonto(color: .yellowIntervalo, text: "Intervalo", icone: "fork.knife", buttonAction: {})
                        }
                        VStack{
                            CardPonto(color: .yellowPrincipal, text: "Fechar ponto", icone: "door.left.hand.closed", buttonAction: {})
                            CardPonto(color: .yellowFalta, text: "Justificar falta", icone: "exclamationmark.bubble.fill", buttonAction: {})
                        }
                    }
                    
                    
                    
                    Text("Seus horários")
                        .fontWeight(.semibold)
                        .padding(.top, 49)
                        .padding(.trailing, 260)
                    
                    RoundedRectangle(cornerRadius: 22)
                        .frame(width: 388, height: 248.32)
                        .foregroundStyle(.whitePhavo)
                        .overlay{
                            ponto()
                        }
                }
                .padding()
                Spacer()
                    
                
            }.ignoresSafeArea()
    }
    
}

#Preview {
    PontoView()
}
