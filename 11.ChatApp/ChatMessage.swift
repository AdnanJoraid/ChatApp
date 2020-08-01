//
//  ChatMessage.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-07-31.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import Foundation
import SwiftUI

class ChatMessage {
    let messageText : String
    let userName : String
    let isMe : Bool
    let messageId = UUID()
    
    init(messageText: String, userName: String, isMe : Bool){
        self.messageText = messageText
        self.userName = userName
        self.isMe = isMe
        
    }
}

let sampleConversation : [ChatMessage] = [
    ChatMessage(messageText: "Hello, how are you?", userName: "Me", isMe: true),
    ChatMessage(messageText: "I am fine and you?", userName: "NotMe", isMe: false),
    ChatMessage(messageText: "I am fine, thanks for asking", userName: "Me", isMe: true)
]
