import SwiftUI

struct KanbanConfig: View {
    //  tasks
    @State var newTaskPressed: Bool = false
    @State private var toDo: [Task] = [
        .init(title: "Revisar componentes no figma", status: .todo),
        .init(title: "Testar prótotipo", status: .todo),
        .init(title: "Atualizar o código no github", status: .todo),
        .init(title: "Adicionar SwiftLint ao projeto", status: .todo),
        .init(title: "Terminar a tela Home", status: .todo)
    ]
    @State private var working: [Task] = [
        .init(title: "Montar apresentação", status: .working)
    ]
    @State private var completed: [Task] = [
        .init(title: "Decidir as funcionalidades", status: .completed),
        .init(title: "Fazer a divisão de tarefas", status: .completed)
    ]
    // View Properties
    @State private var currentlyDragging: Task?
    @State private var newTaskName: String = ""
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack(spacing: 2) {
                    toDoView()
                    workingView()
                    completedView()
                }
                .padding(.top, 14)
            }
            HStack {
                TextField("Nova tarefa", text: $newTaskName)
                Button(action: {
                    let task = Task(title: newTaskName, status: .todo)
                    toDo.append(task)
                    newTaskName = " "
                }, label: {
                    Image(systemName: "plus.circle.fill")
                })
                .disabled(newTaskName.isEmpty)
            }
            .padding(.horizontal)
            .frame(width: 430, height: 46)
            .background(.thinMaterial)
            .cornerRadius(10)
            //        HStack {
            //                        TextField("Nova Tarefa", text: $newTaskName)
            //                        Button("Adicionar") {
            //                            let task = Task(title: newTaskName, status: .todo)
            //                            toDo.append(task)
            //                        }
            //                        .disabled(newTaskName.isEmpty)
            //                    }
            //
        }
    }
    // Tasks View
    @ViewBuilder
    func tasksView(_ tasks: [Task]) -> some View {
        VStack(alignment: .leading, spacing: 10, content: {
            ForEach(tasks) { task in
                GeometryReader {
                    // Task Row
                    taskRow(task, $0.size)
                }
                .frame(width: 295, height: 33)
            }
        })
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding()
    }
    // Task Row ??
    @ViewBuilder
    func taskRow(_ task: Task, _ size: CGSize) -> some View {
        Text(task.title)
            .font(.callout)
            .padding(.horizontal, 18)
            .frame(maxWidth: .infinity, alignment: .leading) // alignment leading pra ajeitar dps
            .frame(height: size.height)
            .background(.taskBackground, in: .rect(cornerRadius: 10))
            .contentShape(.dragPreview, .rect(cornerRadius: 10))
            .draggable(task.id.uuidString) {
                Text(task.title)
                    .font(.callout)
                //                    .padding(.horizontal, 15)
                    .frame(width: size.width, height: size.height)
                    .background(.taskBackground, in: .rect(cornerRadius: 10))
                    .contentShape(.dragPreview, .rect(cornerRadius: 10))
                    .onAppear(perform: {
                        currentlyDragging = task
                    })
            }
            .dropDestination(for: String.self) { _, _ in
                currentlyDragging = nil
                return false
            } isTargeted: { status in
                if let currentlyDragging, status, currentlyDragging.id != task.id {
                    withAnimation(.snappy) {
                        appendTask(task.status)
                        switch task.status {
                        case .todo:
                            replaceItem(tasks: &toDo, dropppingTask: task, status: .todo)
                        case .working:
                            replaceItem(tasks: &working, dropppingTask: task, status: .working)
                        case .completed:
                            replaceItem(tasks: &completed, dropppingTask: task, status: .completed)
                        }
                    }
                }
            }
    }
    // Replacing and removing task from one List to another List
    func appendTask(_ status: Status) {
        if let currentlyDragging {
            switch status {
            case .todo:
                // Safe check and  inserting into list
                if !toDo.contains(where: { $0.id == currentlyDragging.id}) {
                    // updating it's status
                    var updatedTask = currentlyDragging
                    updatedTask.status = .todo
                    // adding to the list
                    toDo.append(updatedTask)
                    // removing it from all others lists
                    working.removeAll(where: { $0.id == currentlyDragging.id})
                    completed.removeAll(where: { $0.id == currentlyDragging.id})
                }
            case .working:
                // Safe check and  inserting into list
                if !working.contains(where: { $0.id == currentlyDragging.id}) {
                    // updating it's status
                    var updatedTask = currentlyDragging
                    updatedTask.status = .todo
                    // adding to the list
                    working.append(updatedTask)
                    // removing it from all others lists
                    toDo.removeAll(where: { $0.id == currentlyDragging.id})
                    completed.removeAll(where: { $0.id == currentlyDragging.id})
                }
            case .completed:
                // Safe check and  inserting into list
                if !completed.contains(where: { $0.id == currentlyDragging.id}) {
                    // pdating it's status
                    var updatedTask = currentlyDragging
                    updatedTask.status = .todo
                    // adding to the list
                    completed.append(updatedTask)
                    // removing it from all others lists
                    working.removeAll(where: { $0.id == currentlyDragging.id})
                    toDo.removeAll(where: { $0.id == currentlyDragging.id})
                }
            }
        }
    }
    // Replacing items within the list
    func replaceItem(tasks: inout [Task], dropppingTask: Task, status: Status) {
        if let currentlyDragging {
            if let sourceIndex = tasks.firstIndex(where: { $0.id == currentlyDragging.id}),
               let destinationIndex = tasks.firstIndex(where: { $0.id == dropppingTask.id}) {
                // Swapping Item's on the List
                var sourceItem = tasks.remove(at: sourceIndex)
                sourceItem.status = status
                tasks.insert(sourceItem, at: destinationIndex)
            }
        }
    }
    // ToDo View
    @ViewBuilder
    func toDoView() -> some View {
        NavigationStack {
            HStack {
                Text("ToDo")
                    .font(.system(size: 20))
                    .bold()
                    .padding(.trailing, 210)
                    .padding(.bottom, -8)
                Text("...")
                    .padding(.trailing, 10)
            }
            ScrollView(.vertical) {
                tasksView(toDo)
            }
            .frame(maxWidth: .infinity)
            .contentShape(.rect)
            .dropDestination(for: String.self) { _, _ in
                // appeding tothe last of the current list, if the item is not presente on that list
                withAnimation(.snappy) {
                    appendTask(.todo)
                }
                return true
            } isTargeted: { _ in
            }
        }
    }
    // Working view
    @ViewBuilder
    func workingView() -> some View {
        NavigationStack {
            HStack {
                Text("Doing")
                    .font(.system(size: 20))
                    .bold()
                    .padding(.trailing, 210)
                    .padding(.bottom, -8)
                Text("...")
                    .padding(.trailing, 10)
                    .font(.system(size: 20))
            }
            ScrollView(.vertical) {
                tasksView(working)
            }
            .frame(maxWidth: .infinity)
            .contentShape(.rect)
            .dropDestination(for: String.self) { _, _  in
                // appeding tothe last of the current list, if the item is not presente on that list
                withAnimation(.snappy) {
                    appendTask(.working)
                }
                return true
            } isTargeted: { _ in
            }
        }
    }
    // Completed View
    @ViewBuilder
    func completedView() -> some View {
        NavigationStack {
            HStack {
                Text("Done")
                    .font(.system(size: 20))
                    .bold()
                    .padding(.trailing, 210)
                    .padding(.bottom, -8)
                Text("...")
                    .padding(.trailing, 10)
            }
            ScrollView(.vertical) {
                tasksView(completed)
            }
            .frame(maxWidth: .infinity)
            .contentShape(.rect)
            .dropDestination(for: String.self) { _, _ in
                // appeding tothe last of the current list, if the item is not presente on that list
                withAnimation(.snappy) {
                    appendTask(.working)
                }
                return true
            } isTargeted: { _ in
            }
        }
    }
}

#Preview {
    KanbanConfig()
}
