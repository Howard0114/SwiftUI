//
//  ListBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/20.
//

import SwiftUI

struct ListBootCamp: View {
    @State var fruits:[String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies:[String] = [
        "tomato", "potato", "tarrot"
    ]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                    HStack(content: {
                        Text("fruits")
                        Image(systemName: "flame.fill")
                    }
                          )
                    .font(.headline)
                    .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
    //                .onDelete { indexSet in
    //                    delete(indexSet: indexSet)
    //                }
                    .onDelete(perform: delete(indexSet:))
                    .onMove(perform: move(indexSet:newOffset:))
                }
                
                Section("veggies") {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            .accentColor(.red)
            .listStyle(.grouped)
            .navigationTitle("Grocery list")
            .navigationBarItems(
                leading: EditButton(),
                trailing:AddButton
            )
        }
        .accentColor(.red)
    }
    
    var AddButton:some View{
        Button("add", action: {
            add()
        })
    }
    
    func delete(indexSet:IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet:IndexSet, newOffset:Int) {
        fruits.move(fromOffsets: indexSet, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("coconut")
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}
