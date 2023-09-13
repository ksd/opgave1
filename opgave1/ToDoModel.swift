//
//  ToDoModel.swift
//  opgave1
//
//  Created by ksd on 15/09/2022.
//

import Foundation

struct ToDoModel: Identifiable {
    let id = UUID()
    let description: String
    var isDone = false
}


extension ToDoModel {
    static let demoData = [
        ToDoModel(description: "købe mælk"),
        ToDoModel(description: "vaske op", isDone: true),
        ToDoModel(description: "drikke mig i hegnet")
    ]
}
