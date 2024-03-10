//
//  SafeAreaBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/10.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
            .edgesIgnoringSafeArea(.all)
        }

    }
}

struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
    }
}
