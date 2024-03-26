//
//  ActionsheetBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/26.
//

import SwiftUI

struct ActionsheetBootCamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetType = .isOtherPost
    
    enum ActionSheetType {
        case isMyPost
        case isOtherPost
    }
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet,
                     content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        var title: String = "this is an action sheet"
        var message: String = "this is an action sheet message"
        let shareButton: ActionSheet.Button = .default(Text("share".uppercased())){
            
        }
        
        let reportButton: ActionSheet.Button =
            .destructive(Text("report".uppercased())){
            
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("delete".uppercased())){
            
        }
        
        let cancelButton: ActionSheet.Button = .cancel(){
            
        }
        
//        return ActionSheet(title: Text("this is an action sheet"))
        
        var buttons: Array<ActionSheet.Button>
        switch actionSheetOption {
        case .isMyPost:
            buttons = [shareButton, deleteButton, cancelButton]
        case .isOtherPost:
            buttons = [shareButton, reportButton, cancelButton]
        }
        
        return ActionSheet(
            title: Text(title),
            message: Text(message),
            buttons: buttons
        )
    }
}

struct ActionsheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootCamp()
    }
}
