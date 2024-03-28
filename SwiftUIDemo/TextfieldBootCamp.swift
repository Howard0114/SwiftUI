//
//  TextfieldBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/27.
//

import SwiftUI

struct TextfieldBootCamp: View {
    @State var textString: String = ""
    @State var textArray: [String] = []
    var body: some View {
        VStack(spacing: 20) {
            TextField("Type something here....", text: $textString)
//                .textFieldStyle(.roundedBorder)
                .padding()
                .background(.gray.opacity(0.3))
                .foregroundColor(.red)
                .font(.title)
            
            Button {
                saveText()
            } label: {
                Text("SAVE")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(textIsApppropriate() ? .blue : .gray)
                    .foregroundColor(.white)
                    .font(.headline)
                    .cornerRadius(15)
            }
            .disabled(!textIsApppropriate())
            
            ForEach(textArray, id: \.self) { text in
                Text(text)
            }
            Spacer()
        }
        .padding()
    }
    
    func saveText() {
        textArray.append(textString)
        textString = ""
    }
    
    func textIsApppropriate() -> Bool {
        return textString.count > 3
    }
}

struct TextfieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootCamp()
    }
}
