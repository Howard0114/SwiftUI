//
//  PaddingBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct PaddingAndSpacerBootCamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.yellow)
//            .padding(.top, 18)
//            .padding(.leading, 8)
//            .padding(.bottom, 18)
//            .padding(.trailing, 8)
//            .frame(maxWidth: .infinity, alignment: .leading)
////            .frame(width: 300, height: 100)
//            .background(.blue)
        
        VStack(alignment: .leading, content: {
            Text("hello world")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("this is the description of what we will do on this screen. It is mutiple lines and we will align the text to the leading edge.")
        })
        .background( )
        .padding(5)
        .background{
            Color.white
                .cornerRadius(15)
                .shadow(color: .black.opacity(0.3), radius: 15, x: 0, y:10)
        }
        .padding(10)
    }
}

struct PaddingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootCamp()
    }
}
