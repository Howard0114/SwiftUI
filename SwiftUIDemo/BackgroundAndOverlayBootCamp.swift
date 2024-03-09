//
//  BackgroundAndOverlayBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/9.
//

import SwiftUI

struct BackgroundAndOverlayBootCamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
////                .red
////                LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 100, height: 100)
//            )
//            .frame(width: 150, height: 150)
//            .background(
//                Circle().fill(
//                    .red
//                )
//            )
  
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1").font(.largeTitle).foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 120, height: 120)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//                ,alignment: .bottomTrailing
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//            )
        
        Image(systemName: "figure.skiing.downhill")
            .font(.system(size: 50))
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .fill(.pink)
                    .frame(width: 100, height: 100)
                    .shadow(color: .pink, radius: 15, x: 5, y: 5)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("8")
                                    .foregroundColor(.white)
                            )
                        ,alignment: .bottomTrailing
                    )
                    
            )
    }
}

struct BackgroundAndOverlayBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootCamp()
    }
}
