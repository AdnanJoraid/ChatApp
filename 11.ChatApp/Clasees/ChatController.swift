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
    
    func receiveMessages() {
        
        
        let query = databaseChats.queryLimited(toLast: 2)
        
        _ = query.observe(.childAdded, with: { [weak self] snapshot in
            
            if  let data = snapshot.value as? [String: String],
                let retrievedUsername = data["username"],
                let retrievedMessageText = data["messageText"],
                !retrievedMessageText.isEmpty
            {
                let retrievedMessage = ChatMessage(messageText: retrievedMessageText, userName: retrievedUsername)
                self?.messages.append(retrievedMessage)
                self?.objectWillChange.send(self!)
            }
        })
    }
    
    
}
