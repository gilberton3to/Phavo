//
//  MyDataPicker.swift
//  Phavo
//
//  Created by Gilberto Neto on 14/05/24.
//

import SwiftUI
import Foundation
import Observation

struct MyDataPicker: View {
    @EnvironmentObject var tasksModel: TasksModel
    @State var currentDate: Date
    @State var currentMonth: Int = 0
    var body: some View {
        VStack(spacing: 35) {
            let days: [String] = ["DOM", "SEG", "TER", "QUA", "QUI", "SEX", "SÁB"]
            HStack(spacing: 20) {
                HStack(spacing: 5) {
                    Text(extraDate()[0])
                        .font(.system(size: 20))
                        .bold()
                    Text(extraDate()[1])
                        .font(.system(size: 20))
                        .bold()
                    Text(Image(systemName: "chevron.forward"))
                        .font(.system(size: 15))
                        .bold()
                        .foregroundStyle(Color(.yellowFazendo))
                }
                Spacer(minLength: 0)
                Button {
                    withAnimation {
                        currentMonth -= 1
                        currentDate = getCurrentMonth()
                    }
                }label: {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.yellowFazendo)
                }
                Button {
                    withAnimation {
                        currentMonth += 1
                        currentDate = getCurrentMonth()
                    }
                }label: {
                    Image(systemName: "chevron.right")
                        .font(.title2)
                        .foregroundColor(.yellowFazendo)
                }
            }
            .padding(.horizontal)
            HStack(spacing: -13) {
                ForEach(days, id: \.self) {day in
                    Text(day)
                        .font(.system(size: 14))
                        .bold()
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .opacity(0.3)
                }
            }
            let columns = Array(repeating: GridItem(.flexible()), count: 7)
            LazyVGrid(columns: columns, spacing: 13) {
                ForEach(extractDate()) {value in
                    cardView(value: value)
                        .background(
                            Capsule()
                                .fill(Color("yellowFazendo"))
                                .padding(.horizontal, 8)
                                .opacity(isSameDay(date1: value.date, date2: currentDate) ? 1 : 0))
                        .onTapGesture {
                            currentDate = value.date
                }
                }
            }
//            VStack(spacing: 20) {
//                Text("Tasks")
//                    .font(.title2.bold())
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                if let taskMetadata = tasksModel.tasksMetaDatas.first(where: { task in
//                    return isSameDay(date1: task.taskDate, date2: currentDate)
//                }) {
//                    ForEach(taskMetadata.taskks) { task in
//                        VStack(alignment: .leading, spacing: 10) {
//                            Text(task.time.addingTimeInterval(CGFloat .random(in: 0...5000)), style: .time)
//                            Text(task.title)
//                                .font(.title2.bold())
//                        }
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                    .padding(.vertical, 10)
//                    .padding(.horizontal)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .background(
//                            Color("yellowFazendo")
//                                .opacity(0.5)
//                                .cornerRadius(10))
//                } else {
//                    Text("Tarefa não encontrada")
//                }
//            }
//            .padding()
//            .padding(.top, 2)
        }
        .onChange(of: currentMonth) { oldValue, newValue in
                print("currentMonth mudou de \(oldValue) para \(newValue)")
        }
    }
    @ViewBuilder
    func cardView(value: DateValue) -> some View {
        VStack {
            if value.day != -1 {
                ZStack {
                    if isSameDay(date1: value.date, date2: currentDate) {
                        Image("HexAmaCal")
                            .frame(height: 1)
                    }
                    Text("\(value.day)")
                        .font(.title3)
                        .foregroundColor(isSameDay(date1: value.date, date2: currentDate) ? .white : .primary)
                        .frame(maxWidth: .infinity)
                    Spacer()
                }
            }
        }
        .padding(.vertical, 0)
        .frame(height: 53, alignment: .top)
    }
    func isSameDay(date1: Date, date2: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDate(date1, inSameDayAs: date2)
    }
    func extraDate() -> [String] {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "pt_BR")
        formatter.dateFormat = "MMMM YYYY"
        let date = formatter.string(from: currentDate)
        return date.components(separatedBy: " ")
    }
    func getCurrentMonth() -> Date {
        let calendar = Calendar.current
        guard let currentMonthDate = calendar.date(byAdding: .month, value: self.currentMonth, to: Date()) else {
            return Date()
        }
        return currentMonthDate
    }
    func extractDate() -> [DateValue] {
        let calendar = Calendar.current
        let currentMonth = getCurrentMonth()
        var days = currentMonth.getAllDates().compactMap { date -> DateValue
            in
            let day = calendar.component(.day, from: date)
            return DateValue(day: day, date: date)
        }
        let firstWeekday = calendar.component(.weekday, from: days.first?.date ?? Date())
        for _ in 0..<firstWeekday - 1 {
            days.insert(DateValue(day: -1, date: Date()), at: 0)
        }
        return days
    }
}
struct MyDataPicker_Previews: PreviewProvider {
    static var previews: some View {
        MyDataPicker(currentDate: Date())
            .environmentObject(TasksModel())
    }
}
extension Date {
    func getAllDates() -> [Date] {
        let calendar = Calendar.current
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
        var range = calendar.range(of: .day, in: .month, for: startDate)!
        range.removeLast()
        return range.compactMap { day -> Date in
            return calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
    }
}
