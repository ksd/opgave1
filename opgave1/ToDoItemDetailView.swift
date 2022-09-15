//
//  ToDoItemDetailView.swift
//  opgave1
//
//  Created by ksd on 15/09/2022.
//

import SwiftUI

struct ToDoItemDetailView: View {
    
    @Binding var item: ToDoModel
    
    var body: some View {
        VStack(spacing: 20){
            Text(item.description)
                .font(.largeTitle)
            Button {
                item.isDone.toggle()
            } label: {
                Image(systemName: item.isDone ? "checkmark" : "circle")
            }
            .tint(item.isDone ? .blue : .yellow)
        }
    }
}

struct ToDoItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemDetailView(item: .constant(ToDoModel.demoData[0]))
    }
}
