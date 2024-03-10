//
//  InitializerBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/10.
//

import SwiftUI

enum Fruit {
    case Apple
    case Orange
}

struct InitializerBootCamp: View {
    var type : Fruit
    var count : Int
    var name : String
    var backgroundColor : Color
    
    init(type: Fruit) {
        self.type = type
        if type == .Apple{
            count = 5;
            name = "apple"
            backgroundColor = .red
        }else{
            count = 8;
            name = "orange"
            backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack{
            Rectangle()
                .cornerRadius(15)
                .foregroundColor(backgroundColor)
                .frame(width: 150, height: 150)
                .overlay {
                    VStack {
                        Text("\(count)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                        Text("\(name)")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
        }
    }
}

struct InitializerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootCamp(type: .Apple)
            InitializerBootCamp(type: .Orange)
        }
    }
}
