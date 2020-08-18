//
//  KeyboardResponder.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-08-02.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import Foundation
import SwiftUI


// preventing the keyboard from hiding the chat/login textfield views by moving the view up/down depending on the currentHeight

class KeyboardResponder: ObservableObject {
    
    var _center: NotificationCenter
    
    @Published var currentHeight: CGFloat = 0

    init(center: NotificationCenter = .default) {
        _center = center
        _center.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        _center.addObserver(self, selector: #selector(keyBoardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func keyBoardWillShow(notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            currentHeight = keyboardSize.height
        }
    }

    @objc func keyBoardWillHide(notification: Notification) {
        currentHeight = 0
    }
}


