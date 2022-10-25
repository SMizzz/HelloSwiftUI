//
//  ContentView.swift
//  ListDemo
//
//  Created by Jero on 2022/10/25.
//

import SwiftUI

struct ToDoItem: Identifiable {
    // List 안에 넣는 배열을 생성할 때
    // Identifiable 프로토콜을 따라야 하는데
    // 강제로 id값을 심어주는
    // id = UUID()을 반드시 써야함.
    var id = UUID()
    
    var task: String
    var imageName: String
}

var listData: [ToDoItem] = [
    ToDoItem(task: "Wash the car", imageName: "car"),
    ToDoItem(task: "Vacuum house", imageName: "house.fill"),
    ToDoItem(task: "Pick up kids from school bus @ 3pm", imageName: "bus.doubledecker"),
    ToDoItem(task: "Auction the kids on eBay", imageName: "cart"),
    ToDoItem(task: "Order Pizza for dinner", imageName: "fork.knife")
]

struct ContentView: View {
    @State private var toggleStatus = true
    
    var body: some View {
        NavigationView{
            List {
                
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notification")
                    }
                }
                
                Section(header: Text("To Do Tasks")) {
                    ForEach(listData) { item in
                        NavigationLink(destination: Text(item.task)) {
                            HStack {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                }
                
            }
            .navigationTitle(Text("To Do List"))
            .navigationBarItems(trailing: EditButton())
          
        }
    }
}

func deleteItem(at offSet: IndexSet){
    
    print("indexSet: \(offSet)")
}
func moveItem(from source: IndexSet, to destination: Int) {
    print("source: \(source)")
    print("destination: \(destination)")
    print(listData)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
