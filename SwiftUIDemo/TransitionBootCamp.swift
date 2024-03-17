//
//  TransitionBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/17.
//

import SwiftUI

struct TransitionBootCamp: View {
    @State var isShowTransition:Bool = false
    var body: some View {
        ZStack(
            alignment: .bottom) {
                VStack {
                    Button("button") {
                        isShowTransition.toggle()
                    }
                    Spacer()
                }
                
                if isShowTransition{
                    Rectangle()
                        .cornerRadius(25)
                        .frame(height: UIScreen.main.bounds.height/2)
                        .transition(
                            .move(edge: .bottom)
                        )
                        .animation(.easeInOut)
                }
            }
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootCamp()
    }
}
