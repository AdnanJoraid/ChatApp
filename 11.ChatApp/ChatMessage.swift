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
    
    init(messageText: String, userName: String){
        self.messageText = messageText
        self.userName = userName
        
        if UserDefaults.standard.string(forKey: "username") == userName{
            self.isMe = true
        } else {
            self.isMe = false
        }
        
    }
}

