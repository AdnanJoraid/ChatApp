//
//  ChatRow.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-08-01.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import SwiftUI

struct ChatRow: View {
    var message : ChatMessage
    
    var body: some View {
        HStack {
            if (message.isMe){
                Spacer()
            }
            VStack(alignment: .leading){
                Text(message.userName)
                    .font(.footnote)
                    .foregroundColor(message.isMe ? lightGrayColor : .gray)
                Text(message.messageText)
            }
            .frame(maxWidth: 280, alignment: self.message.isMe ? .leading : .leading)
            .padding(10)
            .background(message.isMe ? Color.blue : lightGrayColor)
            .cornerRadius(10)
            
            if (!message.isMe) {
                Spacer()
            }
            
        }
        .padding()
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(message: sampleConversation[2])
    }
}
