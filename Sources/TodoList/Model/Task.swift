//
//  Task.swift
//  TodoList
//
//  Created by Rafael Ferreira on 4/29/19.
//

import struct Foundation.Date

final class Task: Model {
    let description: String
    let type: TaskType
    let userId: Int

    init(id: Int, name: String, description: String, type: TaskType, user: User) {
        self.description = description
        self.type = type
        self.userId = user.id

        super.init(id: id, name: name)
    }
}
