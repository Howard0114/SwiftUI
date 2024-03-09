//
//  IconsBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        //https://developer.apple.com/sf-symbols/
        Image(systemName: "folder.fill.badge.plus")
            .renderingMode(.original)
            .resizable()//自动填充大小
//            .font(.title)
            .font(.system(size: 50))
            .aspectRatio(
//                CGSize(width: 150, height: 150),
                contentMode: .fit
            )
            .foregroundColor(.yellow)
            .frame(width: 300, height: 300)

    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
