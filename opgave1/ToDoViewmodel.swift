//
//  ToDoViewmodel.swift
//  opgave1
//
//  Created by ksd on 15/09/2022.
//

import Foundation

class ToDoViewModel: ObservableObject {
    @Published var items = [ToDoModel]()
    
    func deleteItemWith(id: UUID){
        let index = items.firstIndex { item in
            item.id == id
        }
        if let index = index {
            items.remove(at: index)
        }
    }
    
    func createItem(_ item: ToDoModel){
        items.append(item)
    }
    
    // deprecated
    func deleteToDoItemAt(_ index: IndexSet){
        items.remove(atOffsets: index)
    }
    
    init(demoMode: Bool = false){
        if demoMode {
            items = ToDoModel.demoData
        }
    }
}
