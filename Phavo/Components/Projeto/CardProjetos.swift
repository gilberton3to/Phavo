import SwiftUI

struct CardProjetos: View {
    @State var titulo: String = "Projeto"
    @State var cor: Color = .yellowPrincipal
    var body: some View {
        Color.grayFundo
            .ignoresSafeArea()
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.whitePhavo)
                    .frame(width: 380, height: 245)
                    .overlay {
                        HStack {
                            VStack {
                                VStack(alignment: .leading) {
                                    VStack {
                                        Text(titulo)
                                            .bold()
                                            .font(.system(size: 25))
                                            .padding(.bottom, 3)
                                        Text("To-Do")
                                            .font(.system(size: 19.19))
                                            .foregroundStyle(.gray)
                                            .padding(.leading, -28)
                                    }
                                    .padding(.leading, 8)
                                    WidgetLista(tipo: 3)
                                    .padding(.top, 15)
                                }
//                            .padding(.trailing, 120)
                                .padding(.top, 15)
                        }
                            ZStack {
                                Circle()
                                    .stroke(lineWidth: 20)
                                    .frame(width: 125, height: 125)
                                    .opacity(0.5)
                                    .foregroundStyle(.progressCircle)
                                Circle()
                                    .trim(from: 0.4, to: 1)
                                    .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                    .frame(width: 125, height: 125)
                                    .foregroundStyle(cor)
                            }
                            .rotationEffect(.degrees(130))
                            .padding(.trailing, 10)
                            .padding(.leading, -25)
                            .padding(.top, 30)
                   }
             }
          }
       }
    }

#Preview {
    CardProjetos()
}
