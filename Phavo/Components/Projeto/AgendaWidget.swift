//
//  AgendaWidget.swift
//  Phavo
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 13/05/24.
//

import SwiftUI

struct AgendaWidget: View {
    var body: some View {
        Color.grayFundo
            .ignoresSafeArea()
            .overlay {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 380, height: 357)
                    VStack {
                        HStack {
                            HStack {
                                Text("Abril 2024")
                                    .font(.headline)
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.yellowPrincipal)
                                    .font(.system(size: 17))
                            }
                            .padding(.trailing, 175)
                            HStack {
                                Image(systemName: "chevron.left")
                                    .padding(.trailing, 27)
                                Image(systemName: "chevron.right")
                            }
                            .foregroundStyle(.yellowPrincipal)
                            .font(.system(size: 22))
                        }
                        .padding(.bottom, 15)
                        HStack(spacing: 28) {
                            Text( "DOM")
                            Text( "SEG")
                            Text( "TER")
                            Text( "QUA")
                            Text( "QUI")
                            Text( "SEX")
                            Text( "SAB")
                        }
                        .font(.system(size: 13))
                        .foregroundColor(.cinzaEvento)
                        .padding(.bottom, 15)
                        VStack(spacing: 29) {
                            HStack(spacing: 46) {
                                Text(" ")
                                Text(" ")
                                Text(" ")
                                Text("    ")
                                Text("1")
                                Text("2")
                                Text("3")
                            }
                            .font(.system(size: 17))
                            HStack(spacing: 39.5) {
                                Text( "4")
                                ZStack {
                                    Image("HexAmaCal")
                                    Text("5")
                                        .foregroundStyle(.white)
                                }
                                Text("6")
                                Text("7")
                                Text("8")
                                Text("9")
                                Text("10")
                            }
                            .font(.system(size: 17))
                            HStack(spacing: 36.5) {
                                Text("11")
                                Text("12")
                                Text("13")
                                Text("14")
                                Text("15")
                                Text("16")
                                Text("17")
                            }
                            .font(.system(size: 17))
                            HStack(spacing: 34.5) {
                                Text("18")
                                Text("19")
                                Text("20")
                                Text("21")
                                Text("22")
                                Text("23")
                                Text("24")
                            }
                            .font(.system(size: 17))
                            HStack(spacing: 31) {
                                Text("25")
                                Text("26")
                                Text("27")
                                Text("28")
                                Text("29")
                                ZStack {
                                    Image("HexAmaCal")
                                    Text("30")
                                        .foregroundStyle(.white)
                                }
                                Text(" ")
                            }
                            .padding(.trailing)
                            .font(.system(size: 17))
                        }
                    }
                }
            }
    }
}

#Preview {
    AgendaWidget()
}
