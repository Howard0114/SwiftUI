//
//  TextBootcamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text(
            "Hello, World! This is the SwiftUI text program, it shows how to use the text. So let us begin!"
                .capitalized//自动单词首字母大写
        )
            .font(.largeTitle)//字体跟随系统设置
            .fontWeight(.thin)//粗细
            .underline()//下划线
            .strikethrough(true, color:.red)//中划线
            .italic()//斜体
            .fontWeight(.semibold)
            .fontWidth(.expanded)
            .fontDesign(.monospaced)
            .multilineTextAlignment(.leading)//对齐方式
            .baselineOffset(10)
            .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
            .foregroundColor(.gray)
            .minimumScaleFactor(0.1)
            .frame(
                width: 300,
                height: 150,
                alignment: .center
            )
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
