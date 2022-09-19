//
//  ToDoListView.swift
//  opgave1
//
//  Created by ksd on 15/09/2022.
//

import SwiftUI

struct ToDoListView: View {
    
    @EnvironmentObject var viewModel: ToDoViewModel
    @State private var showDeleteAlert = false
    @State private var itemId: UUID?
    
    var body: some View {
        NavigationView {
            List {
                ForEach($viewModel.items) { $item in
                    NavigationLink {
                        ToDoItemDetailView(item: $item)
                    } label: {
                        ToDoListRowView(item: $item)
                    }
                    .swipeActions {
                        Button {
                            item.isDone.toggle()
                        } label: {
                            Image(systemName: item.isDone ? "checkmark" : "circle")
                        }
                        .tint(item.isDone ? .blue : .yellow)
                        Button(role: .destructive) {
                            showDeleteAlert = true
                            itemId = item.id
                            //viewModel.deleteItemWith(id: item.id)
                        } label: {
                            Label("Delete", systemImage: "trash.fill")
                        }
                        
                    }
                }
                /*
                 I stedet for swipeAction hvis vi bare skal bruge delete
                 .onDelete { indexSet in
                 viewModel.deleteToDoItemAt(indexSet)
                 }
                 */
                
            }
            .navigationTitle("\(viewModel.items.count) To-Do items")
            .toolbar {
                ToolbarItem(id: "opret") {
                    NavigationLink {
                        ToDoCreateView()
                    } label: {
                        Image(systemName: "note.text.badge.plus")
                    }
                }
            }
            .alert(isPresented: $showDeleteAlert) {
                Alert(title: Text("Er du sikker på du vil slette?"),
                      primaryButton: .cancel(),
                      secondaryButton: .destructive(Text("Delete")){
                    if let itemId = self.itemId {
                        withAnimation {
                            viewModel.deleteItemWith(id:itemId)
                            self.itemId = nil
                        }
                    }
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView().environmentObject(ToDoViewModel())
    }
}
