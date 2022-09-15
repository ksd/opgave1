//
//  ToDoListRowView.swift
//  opgave1
//
//  Created by ksd on 15/09/2022.
//

import SwiftUI

struct ToDoListRowView: View {
    
    @Binding var item: ToDoModel
    
    var body: some View {
        HStack {
            Text(item.description)
            if item.isDone {
                Spacer()
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct ToDoListRow_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListRowView(item: .constant(ToDoModel(description: "vaske bil", isDone: true)))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
