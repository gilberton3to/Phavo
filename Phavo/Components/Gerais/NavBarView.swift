import SwiftUI

struct NavBarView: View {
    let text: String
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "chevron.left")
                Text("Voltar")
            }
            .foregroundStyle(.yellowPrincipal)
            .padding(.leading, 10)
            Spacer()
            Text(text)
                .padding(.trailing, 80)
            Spacer()
        }
    }
}

#Preview {
    NavBarView(text: "Projeto")
}
