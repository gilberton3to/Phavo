import SwiftUI

struct Geral: View {
    @State var text: String = "Geral"
    var body: some View {
        Text(text)
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            .font(.system(size: 13))
            .font(.system(size: 13.81))
            .padding(7)
            .bold()
            .foregroundStyle(.whitePhavo)
            .background {
                RoundedRectangle(cornerRadius: 5)
                    .fill(.grayGeralButton)
                    .frame(width: 46.96, height: 32)
            }
    }
}

#Preview {
    Geral()
}
