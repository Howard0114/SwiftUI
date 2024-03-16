//
//  AnimationTimingBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/16.
//

import SwiftUI

struct AnimationTimingBootCamp: View {
    @State var isAnimation :Bool = false
    var animationDuration :Double = 0.5
    var body: some View {
        VStack {
            Button("button") {
                isAnimation.toggle()
            }
            
            Rectangle()
                .cornerRadius(15)
                .frame(
                    width: isAnimation ? 350 : 50,
                    height: 50
                )
                .animation(
                    Animation.linear(duration: animationDuration),
                           value: isAnimation
                )

            
            Rectangle()
                .cornerRadius(15)
                .frame(
                    width: isAnimation ? 350 : 50,
                    height: 50
                )
                .animation(
                    Animation.easeIn(duration: animationDuration),
                           value: isAnimation
                )
            
            Rectangle()
                .cornerRadius(15)
                .frame(
                    width: isAnimation ? 350 : 50,
                    height: 50
                )
                .animation(
                    Animation.easeInOut(duration: animationDuration),
                           value: isAnimation
                )
            
            Rectangle()
                .cornerRadius(15)
                .frame(
                    width: isAnimation ? 350 : 50,
                    height: 50
                )
                .animation(
                    Animation.easeOut(duration: animationDuration),
                           value: isAnimation
                )
            
            Rectangle()
                .cornerRadius(15)
                .frame(
                    width: isAnimation ? 350 : 50,
                    height: 50
                )
                .animation(
                    Animation.spring(
                        response: 0.5,
                        dampingFraction: 0.5,
                        blendDuration: 1.0
                    ),
                           value: isAnimation
                )
        }
    }
}

struct AnimationTimingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootCamp()
    }
}
