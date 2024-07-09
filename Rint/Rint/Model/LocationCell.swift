//
//  LocationCell.swift
//  Rint
//
//  Created by Şiyar Palabıyık on 1.07.2024.
//

import Foundation
import SwiftUI

struct LocationCellModel : View {
    let placeName : String
    let placeLocation : String
    let placeCoordinate : (longitude : Int, latitude : Int)
    let placeImage : String
    let totalSub : Int
    let onlineUsers : Int
    let id = UUID()
    
    let width = UIScreen.main.bounds.width
    
    var body: some View{
        HStack {
            HStack{
                
                Image(placeImage, bundle: nil)
                    .resizable()
                    .frame(width: 170)
                    .opacity(0.9)
                Spacer()
                VStack(alignment: .leading){
                    Text(placeName)
                        .font(.title).padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                        .padding(.top)
                        .foregroundColor(.white)
                    Text(placeLocation)
                        .font(.callout)
                        .foregroundStyle(.white)
                        .opacity(0.4)
                    Spacer()
                    HStack{
                        Text("Online Users : \(onlineUsers)  /")
                            .font(.footnote)
                            .padding(.bottom)
                            .foregroundStyle(.green)
                        Text("\(totalSub)")
                            .font(.footnote)
                            .padding(.bottom)
                            .foregroundStyle(.red)
                        Spacer()
                    }
                    
                }
                Spacer()
                Spacer()
            }.frame(width: width * 0.95 ,height: 180)
                .background(.black)
                .foregroundStyle(.black)
                .opacity(0.8)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.white, lineWidth: 1)
                    .opacity(0.4)
                )

                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    LocationCellModel(placeName: "Deneme", placeLocation: "Deneme", placeCoordinate: (longitude: 4454, latitude: 22), placeImage: "image", totalSub: 29, onlineUsers: 3)
}
