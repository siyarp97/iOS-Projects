//
//  ContentView.swift
//  Rint
//
//  Created by Şiyar Palabıyık on 27.06.2024.
//

import SwiftUI
import RiveRuntime

struct StarterPage: View {
    
    @State var id : String = ""
    @State var email : String = ""
    @State var password : String = ""
    
    var body: some View {
        
        let riveViewModel = RiveViewModel(fileName: "RintLogo1")
        
        VStack{
            riveViewModel.view()
                .frame(width: 400, height: 450)

            
            
            Text("Hesabın Yok Mu?")
                .foregroundStyle(Color.white)
                .font(.callout)
                .underline(true)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Gradient(colors: [
                .black.opacity(0.93),
                .black,
                .black,
                .black,
                .black.opacity(0.93),
            ]))

    }
}

#Preview {
    StarterPage()
}
