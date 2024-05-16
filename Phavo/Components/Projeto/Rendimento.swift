//
//  Rendimento.swift
//  Phavo
//
//  Created by Gilberto Neto on 16/05/24.
//

import SwiftUI
enum DaysState {
    case normal
    case bom
    case mtbom
    case incrivel
    case nulo
    var color: Color {
        switch self {
        case .normal:
            return Color.yellowClarinho
        case .bom:
            return Color.yellowClaro
        case .mtbom:
            return Color.yellowClaro2
        case .incrivel:
            return Color.yellowLast
        case .nulo:
            return Color.grayBackground
        }
    }
}
struct SemanaRendimento {
    var semana: [DaysState]
}
struct Rendimento: View {
    let semana = SemanaRendimento(semana: [.nulo, .normal, .mtbom, .nulo, .incrivel, .mtbom])
    let semana1 = SemanaRendimento(semana: [.nulo, .mtbom, .normal, .nulo, .nulo, .normal])
    var body: some View {
        VStack {
            Grid(horizontalSpacing: 12) {
                GridRow {
                    Color.clear
                        .gridCellUnsizedAxes([.vertical, .horizontal])
                    Group {
                        Text("Jan")
                        Text("Fev")
                        Text("Mar")
                        Text("Abr")
                        Text("Mai")
                        Text("Jun")
                    }.lineLimit(1)
                        .font(.system(size: 13))
                        .foregroundStyle(.yellowPrincipal)
                }
                GridRow {
                    Text("Seg")
                    ForEach(semana.semana, id: \.self) {state in
                        HStack(spacing: 2) {
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
//                                .aspectRatio(1, contentMode: .fit)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                        }
                    }
                }
                GridRow {
                    Text("Ter")
                    ForEach(semana.semana, id: \.self) {state in
                        HStack(spacing: 2) {
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                            //                                .aspectRatio(1, contentMode: .fit)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                        }
                    }
                }
                GridRow {
                    Text("Qua")
                    ForEach(semana1.semana, id: \.self) {state in
                        HStack(spacing: 2) {
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                            //                                .aspectRatio(1, contentMode: .fit)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                        }
                    }
                }
                GridRow {
                    Text("Qui")
                    ForEach(semana.semana, id: \.self) {state in
                        HStack(spacing: 2) {
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                            //                                .aspectRatio(1, contentMode: .fit)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                        }
                    }
                }
                GridRow {
                    Text("Sex")
                    ForEach(semana1.semana, id: \.self) {state in
                        HStack(spacing: 2) {
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                            Image("HexagonCinza")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 12)
                                .foregroundStyle(state.color)
                        }
                    }
                }
            }
            HStack {
                Text("Less")
                    .foregroundStyle(.grayBackground)
                Image("HexagonCinza")
                    .renderingMode(.template)
                    .foregroundStyle(.yellowClarinho)
                Image("HexagonCinza")
                    .renderingMode(.template)
                    .foregroundStyle(.yellowClaro)
                Image("HexagonCinza")
                    .renderingMode(.template)
                    .foregroundStyle(.yellowClaro2)
                Image("HexagonCinza")
                    .renderingMode(.template)
                    .foregroundStyle(.yellowLast)
                Text("More")
                    .foregroundStyle(.grayBackground)
            }.padding(.trailing, -200)
        }.padding(5)
            .background(
            RoundedRectangle(cornerRadius: 22)
                .fill(.whitePhavo)
            )
    }
}

#Preview {
    Rendimento()
        .background(.red)
}
