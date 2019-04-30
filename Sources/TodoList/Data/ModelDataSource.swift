//
//  ModelDataSource.swift
//  TodoList
//
//  Created by Rafael Ferreira on 4/29/19.
//

final class ModelDataSource<T: Model>: DataSource {
    var items: [T] = []

    private(set) var modelId: Int = 0

    func incrementModelId() {
        modelId += 1
    }
}
