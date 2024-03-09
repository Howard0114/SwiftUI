//
//  ImageBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        VStack{
            Image("bg")
//                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
//                .foregroundColor(.red)
//                .clipped()
//                .cornerRadius(30)
//                .clipShape(Circle())
                
//            Spacer().frame(width: 20, height: 20).foregroundColor(.red)
//            Image("wechat")
        }
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
