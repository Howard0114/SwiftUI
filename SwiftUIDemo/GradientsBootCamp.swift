//
//  GradientsBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(
//                    colors: [.red.opacity(0.5), .blue.opacity(0.5)],
//                               startPoint: .topLeading, endPoint:.bottomTrailing)
//                RadialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 150)
                AngularGradient(colors: [.red, .blue], center: .center, startAngle: .degrees(90), endAngle:.degrees(270))
                
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootCamp()
    }
}
