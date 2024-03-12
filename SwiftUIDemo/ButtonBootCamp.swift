//
//  ButtonBootCamo.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/11.
//

import SwiftUI

struct ButtonBootCamp: View {
    @State var text:String = "this is my title"
    var body: some View {
        VStack(spacing: 20, content: {
            Text(text)
            Button("press me") {
                text = "button 1 pressed"
            }
            .accentColor(.red)
            
            Button {
                text = "button 2 pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.title2)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                text = "button 3 pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 70, height: 70)
                    .shadow(radius: 10)
                    .overlay (
                        Image(systemName: "heart.fill")
                    )
            }

        })
    }
}

struct ButtonBootCamo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootCamp()
    }
}
