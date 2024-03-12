//
//  ExtractedFuctionBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/12.
//

import SwiftUI

struct ExtractedFuctionBootCamp: View {
    
    @State var backGroundColor:Color = .pink
    
    var body: some View {
        ZStack {
            backGroundColor.ignoresSafeArea()
            overlayer
        }
    }
    
    var overlayer: some View {
        VStack(spacing: 20, content: {
            Text("Title")
            Button("click me") {
                buttonClick()
            }
            .frame(width: 100, height: 50)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(5)
        })
    }
    
    func buttonClick(){
        backGroundColor = .yellow
    }
}

struct ExtractedFuctionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFuctionBootCamp()
    }
}
