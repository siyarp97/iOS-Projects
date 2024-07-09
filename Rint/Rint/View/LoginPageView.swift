//
//  LoginPageView.swift
//  Rint
//
//  Created by Şiyar Palabıyık on 1.07.2024.
//

import SwiftUI

struct LoginPageView: View {
    
    @State var userName : String = ""
    @State var password : String = ""
    var body: some View {

        VStack {
            Spacer()
            Form{
               
                Section{ TextField("Username", text: $userName) }
                Section{ TextField("Password", text: $password)
                        
                }
            }
            .background(.black)
            .opacity(0.9)
            .scrollContentBackground(.hidden)
            

        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)

   
    }

}

#Preview {
    LoginPageView()
}
