//
//  ViewRouter.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-07-30.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter : ObservableObject {
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage : String = "" {
        didSet {
            objectWillChange.send(self)
        }
    }
    
    init(pageToStartWith : String){
        currentPage = pageToStartWith
    }
}
