//
//  ShapesBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        VStack{
            Circle() //圆形
//            Ellipse() //椭圆
//            Capsule() //胶囊
//            Rectangle() //矩形
                .trim(from: 0.1, to: 0.9)//剪裁 0是3点钟方向  0.25 6点钟方向  0.5 9点钟方向  1 12点钟方向
    //            .stroke(.orange,
    //                    style:StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30])
    //            )
                .stroke(.purple, lineWidth: 20)
    //            .fill(Color.green)
                .foregroundColor(.green)
                .border(.blue)
                .strikethrough()
    //
                .frame(width: 100, height: 200)
                
//            Ellipse()
//                .frame(width: 100, height: 200)
        }
    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
