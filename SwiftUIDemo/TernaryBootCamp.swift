//
//  TernaryBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/14.
//

import SwiftUI

struct TernaryBootCamp: View {
    @State var value:Bool = false
    var body: some View {
        VStack(spacing: 10) {
            Button("button: \(value.description)") {
                value.toggle()
            }
            
            Text(value ? "true" : "false")
            
            Rectangle()
                .foregroundColor(value ? .red : .blue)
                .cornerRadius(value ? 15 : 0)
                .frame(
                    width: value ? 100 : 50,
                    height: value ? 100 : 50
                )
            Spacer()
        }
    }
}

struct TernaryBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootCamp()
    }
}
