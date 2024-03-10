//
//  GridBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/10.
//

import SwiftUI

struct GridBootCamp: View {
    
    var gridcolumns : [GridItem] = [
//        GridItem(.flexible(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 50, maximum: 100), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.green)
                .frame(height: 400)
            
            LazyVGrid(columns: gridcolumns,
                      spacing: 10) {
                Section {
                    ForEach(0..<100){ index in
    //                    Text("Placeholder \(index)")
                        Rectangle()
                            .fill(.blue)
                            .frame(height: 50)
                    }
                } header: {
                    Text("section1")
                        .frame(height: 50)
                }
                
                Section {
                    ForEach(0..<100){ index in
    //                    Text("Placeholder \(index)")
                        Rectangle()
                            .fill(.blue)
                            .frame(height: 50)
                    }
                } header: {
                    Text("section2")
                        .frame(height: 50)
                }
            }
            .background(.red)
        }
    }
}

struct GridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootCamp()
    }
}
