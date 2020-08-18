//
//  DatabaseConstants.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-08-02.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import Foundation
import Firebase

// for accessing the root and the chat node of the firebase

let databaseRoot = Database.database().reference()

//creates a child out of the root.
let databaseChats = databaseRoot.child("chats")
