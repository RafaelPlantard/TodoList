//
//  TaskController.swift
//  TodoList
//
//  Created by Rafael Ferreira on 4/29/19.
//

final class TaskController {
    private let tasks: ModelDataSource<Task>
    private let users: ModelDataSource<User>

    // MARK: Initializer

    init(tasks: ModelDataSource<Task>, users: ModelDataSource<User>) {
        self.tasks = tasks
        self.users = users
    }

    // MARK: Functions

    func createTodoTask(name: String, description: String, userId: Int) {
        create(name: name, description: description, type: .todo, userId: userId)
    }

    func createDoingTask(name: String, description: String, userId: Int) {
        create(name: name, description: description, type: .doing, userId: userId)
    }

    func createDoneTask(name: String, description: String, userId: Int) {
        create(name: name, description: description, type: .done, userId: userId)
    }

    // MARK: Private functions

    private func create(name: String, description: String, type: TaskType, userId: Int) {
        tasks.incrementModelId()

        let user = getUserBy(id: userId)

        tasks.items.append(
            Task(id: tasks.modelId, name: name, description: description, type: type, user: user)
        )
    }

    private func getUserBy(id: Int) -> User {
        guard let user = users.items.first(where: { user in user.id == id }) else {
            fatalError("User id not found")
        }

        return user
    }
}
