//
//  BaseModel.swift
//  TodoList
//
//  Created by Rafael Ferreira on 4/29/19.
//

import struct Foundation.Date

class Model {
    let id: Int
    let name: String
    let creationDate: Date

    init(id: Int, name: String) {
        self.id = id
        self.name = name
        self.creationDate = Date()
    }
}
