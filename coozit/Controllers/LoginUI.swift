//
//  LoginUI.swift
//  somattt
//
//  Created by 賴宜賢 on 2020/10/25.
//  Copyright © 2020 WPG. All rights reserved.
//

import SwiftUI

struct LoginUI: View {
    @State private var login = false
    @State private var account = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Coozit!")
                TextField("Please enter account", text: $account).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                SecureField("Please enter password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                NavigationLink(destination: Register(), isActive: $login){
                    EmptyView()
                }
                
                Button(action: {
                    if (self.account.uppercased() == "ERIC" && self.password == "1234") {
                        self.login = true
                    }
                }, label: {
                    Text("Login").foregroundColor(Color.white).padding().background(Color.blue).cornerRadius(10)
                })
            }
        }
        
        
    }
}

struct LoginUI_Previews: PreviewProvider {
    static var previews: some View {
        LoginUI()
    }
}
