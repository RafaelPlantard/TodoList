//
//  User.swift
//  TodoList
//
//  Created by Rafael Ferreira on 4/29/19.
//

import struct Foundation.Date

final class User: Model {
    let email: String
    let password: String
    let type: UserType

    init(id: Int, name: String, email: String, password: String, type: UserType) {
        self.email = email
        self.password = password
        self.type = type

        super.init(id: id, name: name)
    }
}
