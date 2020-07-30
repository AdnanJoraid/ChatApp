//
//  LoginScreen.swift
//  11.ChatApp
//
//  Created by Adnan Joraid on 2020-07-25.
//  Copyright © 2020 Adnan Joraid. All rights reserved.
//

import SwiftUI

let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginScreen: View {
    @State private var userNameInput : String = ""
    
    @EnvironmentObject var viewRouter : ViewRouter
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.title)
                .padding(.top, 100)
                .padding(.bottom, 170)
                .foregroundColor(.blue)
            
            Text("Please enter your nickname")
                .foregroundColor(.blue)
            Spacer()
            
            TextField("Enter username", text:$userNameInput)
                .padding()
                .frame(height: 50)
                .background(lightGrayColor)
                .cornerRadius(10)
                .padding()
            Spacer()
            
            Button(action: {print(("tapped"))}){
                Text("log in")
                    .foregroundColor(.black)
                
            }.foregroundColor(.blue)
                .frame(width: 280, height: 60)
                .background(Color.pink)
                .cornerRadius(40)
            Spacer()
            
            
        }
    }
    
    func signIn(){
        guard !userNameInput.isEmpty else {
            return
        }
        let defaults = UserDefaults.standard
        defaults.set(userNameInput, forKey: "username")
        
        viewRouter.currentPage = "chatScreen"
       
    }
}



struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
