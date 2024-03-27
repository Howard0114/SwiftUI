//
//  ContextMenuBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/27.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    @State var backGroundColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
            Text("SwiftUI Thinking")
            Text("How to use Context Menu")
        }
        .foregroundColor(.white)
        .padding(30)
        .background {
            backGroundColor
                .cornerRadius(15)
        }
        .contextMenu(menuItems: {
            Button {
                backGroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            
            Button {
                backGroundColor = .green
            } label: {
                Text("Report post")
            }
            
            Button {
                backGroundColor = .purple
            } label: {
                Label("Like post", systemImage: "heart.fill")
            }

        })
    }
}

struct ContextMenuBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootCamp()
    }
}
