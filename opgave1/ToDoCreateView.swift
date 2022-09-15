//
//  ToDoCreateView.swift
//  opgave1
//
//  Created by ksd on 15/09/2022.
//

import SwiftUI

struct ToDoCreateView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var viewModel: ToDoViewModel
    @State private var description = ""
    @State private var isDone = false
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Description", text: $description)
            Toggle("Done", isOn: $isDone)
        }
        .padding()
        .toolbar {
            ToolbarItem(id: "createNew", placement: .navigationBarTrailing) {
                Button {
                    let toDoItem = ToDoModel(description: description, isDone: isDone)
                    viewModel.createItem(toDoItem)
                    dismiss()
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
        }
    }
}

struct ToDoCreateView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ToDoCreateView().environmentObject(ToDoViewModel())
                .navigationTitle("Create new To-Do Item")
        }
    }
}
