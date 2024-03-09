//
//  ColorBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct ColorBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .primary
//                Color.red
                Color("HowardCustomRed") //assets自定义颜色，跟随系统黑白，
//                Color(uiColor: UIColor.red)//使用UIColor
            )
            .frame(width: 300, height: 200)
            .shadow(color: .blue.opacity(0.4), radius: 14, x: 4, y: 5)
    }
}

struct ColorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootCamp()
    }
}
