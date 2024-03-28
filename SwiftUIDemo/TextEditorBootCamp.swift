//
//  TextEditorBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/28.
//

import SwiftUI

struct TextEditorBootCamp: View {
    @State var textEditorText: String = "This is a text editor"
    @State var text: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .font(.title2)
                    .frame(height: 200)
//                    .foregroundColor(.red)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                Button {
                    text = textEditorText
                } label: {
                    Text("SAVE")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(15)
                }
                Text(text)
                Spacer()
            }
            .padding()
            .background(.orange)
            .navigationTitle("TextEditor Bootcamp")
        }
        
    }
}

struct TextEditorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootCamp()
    }
}
