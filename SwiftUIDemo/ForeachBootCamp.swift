//
//  ForeachBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/10.
//

import SwiftUI

struct ForeachBootCamp: View {
    let array:[String] = ["apple", "orange", "banana"]
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                Text("Hello, World! \(index)")
            }
            Spacer()
                .frame(height: 20)
            ForEach(array.indices, id: \.self) { index in
                Text("\(array[index]) \(index)")
            }
        }
    }
}

struct ForeachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootCamp()
    }
}
