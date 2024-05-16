import SwiftUI

struct CardPonto: View {
    let color: Color
    let text: String
    let icone: String
    let buttonAction: () -> Void
    var body: some View {
        Button(action: {
            buttonAction()
        }, label: {
            RoundedRectangle(cornerRadius: 20)
                .fill(color)
                .frame(width: 190, height: 122)
                .overlay(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Image(systemName: icone)
                            .resizable()
                            .frame(width: 27, height: 31)
                            .foregroundStyle(.whitePhavo)
                            .padding()
                        Spacer()
                        Text(text)
                            .bold()
                            .foregroundStyle(.whitePhavo)
                            .padding()
                    }
                }
        })
    }
}

#Preview {
    CardPonto(color: .red, text: "Abrir ponto", icone: "door.left.hand.open", buttonAction: {
        print("oi")
    })
}
