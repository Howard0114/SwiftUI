//
//  PopoverBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/19.
//

import SwiftUI

struct PopoverBootCamp: View {
    @State var showNewScreen:Bool = false
    var body: some View {
        VStack {
            Button("button") {
                showNewScreen.toggle()
            }
            .font(.largeTitle)
            Spacer()
        
            ///method 1 - sheet
//        .popover(isPresented: $showNewScreen) {
//            NewScreen()
//        }
        
            ///method 2 transition
            ZStack {
                if showNewScreen{
                    NewScreen(showScreen: $showNewScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring())
                }
            }
            .zIndex(2.0)

            ///method 3 animation
//            NewScreen(showScreen: $showNewScreen)
//                .padding(.top, 100)
//                .offset(y:showNewScreen ? 0 : UIScreen.main.bounds.height)
//                .animation(.spring(), value: showNewScreen)
            
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showScreen:Bool
    var body: some View{
        ZStack (alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
                showScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
        
    }
}

struct PopoverBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootCamp()
    }
}
