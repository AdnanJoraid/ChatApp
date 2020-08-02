//
//  ChatController.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-08-02.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ChatController : ObservableObject {
    var messages = [ChatMessage]()
    
    let objectWillChange = PassthroughSubject<ChatController,Never>()
    
    func sendMessage(messageText: String){
        let newChat = databaseChats.childByAutoId()
        
        let messageToSend = ["username": UserDefaults.standard.string(forKey: "username") ?? "Unknown user", "messageText": messageText]
        
        newChat.setValue(messageToSend)
    }
    

}
