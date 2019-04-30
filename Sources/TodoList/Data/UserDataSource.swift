//
//  UserDataSource.swift
//  TodoList
//
//  Created by Rafael Ferreira on 4/29/19.
//

final class UserDataSource: DataSource {
    var items: [User] = []

    private(set) var modelId: Int = 0

    func incrementModelId() {
        modelId += 1
    }
}
