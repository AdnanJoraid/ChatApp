//
//  MotherView.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-07-25.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter : ViewRouter
    
    var body: some View {
        VStack {
            
            if (viewRouter.currentPage == "loginScreen"){
                LoginScreen()
                
            } else if (viewRouter.currentPage == "chatScreen") {
                ChatScreen(chatController: ChatController())
            }
            
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView()
    }
}
