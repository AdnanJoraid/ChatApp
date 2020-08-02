//
//  ChatScreen.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-07-25.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import SwiftUI

struct ChatScreen: View {
    
    @State var newMessageInput : String = ""
    
    var body: some View {
        NavigationView{
            VStack {
                ForEach(sampleConversation, id:\.messageId) {message in
                    ChatRow(message: message)
                    
                }
                Spacer()
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lightGrayColor, lineWidth: 2)
                        .padding()
                    
                    HStack {
                        TextField("New message...", text: $newMessageInput, onCommit: {print("send message")})
                            .padding(25)
                        
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                            .padding(30)
                    }
                }.frame(height:70)
            }
             .navigationBarTitle("ChatApp")
        
        }
       
        
    }
}

struct ChatScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreen()
    }
}
