//
//  DatabaseConstants.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-08-02.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import Foundation
import Firebase

let databaseRoot = Database.database().reference()

let databaseChats = databaseRoot.child("chats")
