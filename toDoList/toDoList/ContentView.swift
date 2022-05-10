//
//  ContentView.swift
//  toDoList
//
//  Created by Ouriel Bennathan on 10/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(0..<todos.count){
                    index in
                    CheckBox(title: todos[index])
                }
            }.navigationBarTitle("Todo list")
        }
    }
}
 
let todos = [
    "finish work",
    "feed nipo",
    "give nipo grass",
    "watch TV",
    "fix the gimbel",
    "charge drone battries"
]
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
 
//creating our checkBox
struct CheckBox: View {
    @State private var selected: Bool = false
    var title:String = "untitled"
    
    var body: some View{
        HStack{
            Image(systemName: selected ? "checkmark.square" : "square")
            Text("\(title)").strikethrough(selected, color: .red)
        }.onTapGesture {
            self.selected.toggle()
        }
    }
}
