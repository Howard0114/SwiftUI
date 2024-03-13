//
//  ConditionalBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/13.
//

import SwiftUI

struct ConditionalBootCamp: View {
    @State var showCircle: Bool = false
    @State var showRect: Bool = false
    @State var showLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20, content: {
            Button("circle button:\(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("rect button:\(showRect.description)") {
                showRect.toggle()
            }
            
            Button("show loading:\(showLoading.description)") {
                showLoading.toggle()
            }
            
            if showLoading{
                ProgressView()
            }
            
            if showCircle{
                Circle()
                    .frame(width: 100, height: 100)
                
            }
            
            if showRect{
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if showCircle && showRect{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 100, height: 100)
            }
            
            Spacer()
        })
    }
}

struct ConditionalBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootCamp()
    }
}
