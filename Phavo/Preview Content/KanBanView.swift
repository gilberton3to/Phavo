import SwiftUI

struct KanBanView: View {
    var body: some View {
        HStack{
            NavBarView(text: "Projeto 1")
            Image(systemName: "plus.circle.fill")
                .padding(.trailing, 30)
                .padding(.leading, -60)
                .foregroundStyle(.yellowPrincipal)
                
        }
        .padding(.top, 20)
        .padding(.leading)
        Spacer()
        
        Text("Kanban")
            .foregroundStyle(.yellowPrincipal)
            .font(.system(size: 32))
            .bold()
        
    }
}

#Preview {
    KanBanView()
}
