//
//  StateBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/12.
//

import SwiftUI

struct StateBootCamp: View {
    @State var titleText:String = "this is a text"
    @State var count: Int = 0
    var body: some View {
        VStack(spacing: 20, content: {
            Text(titleText)
                .font(.title)
            
            Text("count \(count)")
            
            HStack {
                Button("button 1".uppercased()) {
                    count += 1
                    titleText = "button 1 pressed"
                }
                
                Button("button 2".uppercased()) {
                    count -= 1
                    titleText = "button 2 pressed"
                }
            }
        })
    }
}

struct StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootCamp()
    }
}
