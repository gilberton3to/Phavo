//
//  Progresso.swift
//  TabViewProjectApp
//
//  Created by User on 29/04/24.
//

import SwiftUI
// propriedades computada vs armazenada
struct Progresso: View {
    @State var progress: CGFloat
    @State var tam: CGFloat
    @State var altura: CGFloat
    @State var radius: CGFloat
    @State var color: Color
    @State var colorFundo: Color
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: radius)
                .foregroundStyle(colorFundo)
                .frame(width: tam, height: altura)
            RoundedRectangle(cornerRadius: radius)
                .foregroundStyle(color)
                .frame(width: progress, height: altura)
        }
    }
}

func calcularProgress(porcentagem: Float) -> CGFloat {
    return CGFloat(porcentagem*2)
}
#Preview {
    Progresso(progress: 80, tam: 200, altura: 20, radius: 10, color: .green, colorFundo: .grayFundo)
}
