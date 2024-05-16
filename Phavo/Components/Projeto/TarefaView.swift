import SwiftUI

struct TarefaView: View {
   @State var text: String
   @State var colorCircle: Color
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 40, height: 10))
            .overlay {
                HStack {
                    Text(text)
                        .foregroundStyle(.black)
                        .font(.system(size: 13))
                        .padding(.leading, 15)
                    Spacer()
                    Circle()
                        .fill(colorCircle)
                        .frame(width: 23, height: 23)
                }.padding(.trailing, 5)
            }
            .foregroundStyle(Color.grayFundo)
            .frame(width: 365, height: 30)
    }
}

#Preview {
    TarefaView(text: "Padrão", colorCircle: .green)
}
