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
    
    var body: some View {
        NavigationView{
            VStack{
                Text("coozit!")
                NavigationLink(destination: Register(), isActive: $login){
                    EmptyView()
                }
                
                Button("LOGIN"){
                    self.login = true
                }
            }
        }
        
        
    }
}

struct LoginUI_Previews: PreviewProvider {
    static var previews: some View {
        LoginUI()
    }
}
