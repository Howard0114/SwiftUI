//
//  StacksBootcamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
//        VStack
//        HStack
//        ZStack
//        ZStack(alignment:.topLeading, content: {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 100, height: 100)
//        })
        
        ZStack{
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500)
            
            VStack{
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                HStack{
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(.red)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 25, height: 25)
                }.background(.white)

            }
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
