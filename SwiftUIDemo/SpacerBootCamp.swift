//
//  SpacerBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .frame(width: 100, height: 100)
            Spacer()
                .frame(height: 10)
                .background(.orange)
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
        }
        .background(.blue)
    }
}

struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}
