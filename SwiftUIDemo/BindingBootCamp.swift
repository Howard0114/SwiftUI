//
//  BindingBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/13.
//

import SwiftUI

struct BindingBootCamp: View {
    @State var backgroundColor: Color = .green
    @State var textString: String = "title"
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(textString)
                ButtonView(backgroundColor: $backgroundColor, textString: $textString)
            }
            
            
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .white
    @Binding var textString: String
    var body: some View{
        Button("button") {
            backgroundColor = .orange
            buttonColor = .pink
            textString = "this is another title"
        }
        .padding()
        .padding(.horizontal)
        .background(buttonColor)
        .cornerRadius(10)
    }
}

struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}
