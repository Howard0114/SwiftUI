//
//  AnimationBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/14.
//

import SwiftUI

struct AnimationBootCamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("button") {
                withAnimation(
                    Animation
                        .default
                        .delay(1)
                        .repeatCount(5)
                ) {
                    isAnimated.toggle()
                }
//                withAnimation {
//                    Animation
//                        .default
//                        .repeatForever()
//                    isAnimated.toggle()
//                }
                
            }
            
            Spacer()
            
            Rectangle()
                .foregroundColor(isAnimated ? .red : .blue)
                .cornerRadius(isAnimated ? 50 : 25)
                .frame(
                    width: isAnimated ? 100 : 200,
                    height: isAnimated ? 100 : 200
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            
            Spacer()
        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
