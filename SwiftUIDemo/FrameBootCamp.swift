//
//  FrameBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(.green)
            .frame(maxWidth: .infinity)
            .frame(width: 100, height: 100)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity)
            .background(.yellow)
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}
