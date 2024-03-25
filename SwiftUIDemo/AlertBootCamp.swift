//
//  AlertBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/25.
//

import SwiftUI



struct AlertBootCamp: View {
    @State var showAlert: Bool = false
    @State var backGroundColor: Color = .yellow
    @State var alertType: AlerType? = nil
    
    enum AlerType {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            backGroundColor.edgesIgnoringSafeArea(.all)
            
            Button("button") {
                showAlert.toggle()
            }
                .alert(isPresented: $showAlert) {
        //            Alert(title: Text("there was a error"))
                    getAlert()
                }
            
//            VStack {
//                Button("button 1") {
//                    alertType = .success
//                    showAlert.toggle()
//                }
//
//                Button("button 2") {
//                    alertType = .error
//                    showAlert.toggle()
//                }
//            }
//            .alert(isPresented: $showAlert) {
//                getAlert()
//            }
            
        }
    }
    
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("success"))
        case .error:
            return Alert(title: Text("error"))
        default:
            return Alert(title: Text("title"),
                  message: Text("there was a error"),
                  primaryButton: .destructive(Text("delete"),
                                              action: {
                backGroundColor = .red
            }),
                  secondaryButton: .cancel())
        }
        
        
    }
}

struct AlertBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCamp()
    }
}
