//
//  SheetBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/18.
//

import SwiftUI

struct SheetBootCamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(.white)
                    .cornerRadius(10)
            })
            .sheet(isPresented: $showSheet) {
                //不要在这里写if else 不会生效
                SecondView()
            }
        }
    }
}

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading, content: {
            Color.red
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(20)
            }

        })
    }
}

struct SheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootCamp()
    }
}
