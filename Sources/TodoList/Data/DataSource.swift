//
//  DataSource.swift
//  TodoList
//
//  Created by Rafael Ferreira on 4/29/19.
//

protocol DataSource where T: Model {
    associatedtype T

    var items: [T] { get set }

    var modelId: Int { get }

    func incrementModelId()
}
