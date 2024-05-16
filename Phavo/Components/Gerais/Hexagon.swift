import SwiftUI
struct Hexagon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        // Ajuste de proporção para um hexágono equilátero
        let padding = min(width, height) * 0.1
        // Pontos dos vértices do hexágono
        let po1 = CGPoint(x: rect.midX, y: rect.minY + padding)
        let po2 = CGPoint(x: rect.maxX - padding, y: rect.minY + height / 3)
        let po3 = CGPoint(x: rect.maxX - padding, y: rect.maxY - height / 3)
        let po4 = CGPoint(x: rect.midX, y: rect.maxY - padding)
        let po5 = CGPoint(x: rect.minX + padding, y: rect.maxY - height / 3)
        let po6 = CGPoint(x: rect.minX + padding, y: rect.minY + height / 3)
        // Desenhar o hexágono
        path.move(to: po1)
        path.addLine(to: po2)
        path.addLine(to: po3)
        path.addLine(to: po4)
        path.addLine(to: po5)
        path.addLine(to: po6)
        path.closeSubpath()
        return path
    }
}
        struct HexagonView: View {
            var body: some View {
                Hexagon()
                    .fill(.yellowPrincipal)
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 100, height: 100) // Ajuste o tamanho conforme necessário
            }
        }

        struct HexView: View {
            var body: some View {
                HexagonView()
            }
        }

        // Visualização de pré-visualização
        #if DEBUG
        struct HexView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        #endif

#Preview {
    HexagonView()
        .frame(width: 350, height: 300)
}
