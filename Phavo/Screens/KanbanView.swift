import SwiftUI

struct KanbanView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Kanban")
                        .foregroundColor(.amareloQueimado)
                        .font(.system(size: 32))
                        .bold()
                    Geral()
                    Spacer()
                }
                .padding(.trailing, 210)
                .padding(.top, 22)
                .padding(.leading, 16)
                KanbanConfig()
                Spacer()
            }
            .navigationTitle("Projeto 1")
        }
    }
}
#Preview {
    KanbanView()
}
