//
//  ExtractSubviewsBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/12.
//

import SwiftUI

struct ExtractSubviewsBootCamp: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            OverlayView()
        }
    }
}

struct ExtractSubviewsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootCamp()
    }
}

struct ContentItem: View {
    var title: String
    var name: String
    var backGroundColor: Color
    
    var body: some View {
        VStack {
            Text(title)
            Text(name)
        }
        .frame(width: 70, height: 70)
        .background(content: {
            backGroundColor
        })
        .cornerRadius(10)
        .padding()
    }
}

struct OverlayView: View {
    var body: some View {
        VStack {
            ContentItem(title: "1", name: "apple", backGroundColor: .red)
            ContentItem(title: "100", name: "oranges", backGroundColor: .orange)
            ContentItem(title: "57", name: "bananas", backGroundColor: .yellow)
        }
    }
}
