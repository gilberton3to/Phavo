//
//  Taskks.swift
//  Phavo
//
//  Created by Gilberto Neto on 14/05/24.
//

import SwiftUI
import Observation
import Combine

struct Taskk: Identifiable {
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

struct TaskMetaData: Identifiable {
    var id = UUID().uuidString
    var taskks: [Taskk]
    var taskDate: Date
}

func getSampleDate(offset: Int) -> Date {
    let calendar = Calendar.current
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    return date ?? Date()
}

func customDate(year: Int, month: Int, day: Int) -> Date {
    var dateComponents = DateComponents()
    dateComponents.year = year
    dateComponents.month = month
    dateComponents.day = day
    let calendar = Calendar.current
    return calendar.date(from: dateComponents) ?? Date()
}

class TasksModel: ObservableObject {
    @Published var tasksMetaDatas: [TaskMetaData] = [
        TaskMetaData(taskks: [
            Taskk(title: "Reunião de Mentores")],
             taskDate: getSampleDate(offset: 1)),
        TaskMetaData(taskks: [
            Taskk(title: "Planejamento com a Mari")],
             taskDate: customDate(year: 2024, month: 5, day: 19))
    ]
}
