//
//  ToggleBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/28.
//

import SwiftUI

struct ToggleBootCamp: View {
    @State var toggleIsOn:Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("status:")
                Text(toggleIsOn ? "online" : "offline")
            }
            Toggle("toggle", isOn: $toggleIsOn)
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            Spacer()
        }
        .padding()

    }
}

struct ToggleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootCamp()
    }
}
