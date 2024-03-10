//
//  ScrollViewBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/10.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<20) { index in
                    ScrollView(.horizontal, showsIndicators: false){
                            LazyHStack{
                                ForEach(0..<3){ index in
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .cornerRadius(15)
                                        .frame(width: 150, height: 150)
                                        .padding(15)
                                        .shadow(color: .black.opacity(0.5), radius: 15, x: 0, y: 10)
                                }
                            }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
