//
//  opgave1App.swift
//  opgave1
//
//  Created by ksd on 15/09/2022.
//

import SwiftUI

@main
struct opgave1App: App {
    var body: some Scene {
        WindowGroup {
            ToDoListView().environmentObject(ToDoViewModel())
        }
    }
}
