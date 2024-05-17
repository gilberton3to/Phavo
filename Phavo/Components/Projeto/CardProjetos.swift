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
                    .frame(width: 360, height: 230)
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
                                    .padding(.leading, 5)
                                    WidgetLista(tipo: 3)
                                    .padding(.top, 3)
                                }
                                .padding(.top, 1)
                        }
                            ZStack {
                                Circle()
                                    .stroke(lineWidth: 15)
                                    .frame(width: 105, height: 105)
                                    .opacity(0.5)
                                    .foregroundStyle(.progressCircle)
                                Circle()
                                    .trim(from: 0.4, to: 1)
                                    .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                                    .frame(width: 105, height: 105)
                                    .foregroundStyle(cor)
                            }
                            .rotationEffect(.degrees(130))
                            .padding(.trailing, 15)
                            .padding(.leading, -45)
                            .padding(.top, 50)
                   }
             }
          }
       }
    }

#Preview {
    CardProjetos()
}
