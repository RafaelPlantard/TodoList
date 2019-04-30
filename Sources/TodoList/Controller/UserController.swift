//
//  UserController.swift
//  TodoList
//
//  Created by Rafael Ferreira on 4/29/19.
//

final class UserController {
    private let users: ModelDataSource<User>

    // MARK: Initializer

    init(users: ModelDataSource<User>) {
        self.users = users
    }

    // MARK: Functions

    func createUser(name: String, email: String, password: String) {
        create(name: name, email: email, password: password, type: .user)
    }

    func createAdminUser(name: String, email: String, password: String) {
        create(name: name, email: email, password: password, type: .admin)
    }

    // MARK: Private functions

    private func create(name: String, email: String, password: String, type: UserType) {
        users.incrementModelId()

        users.items.append(
            User(id: users.modelId, name: name, email: email, password: password, type: type)
        )
    }
}
