//
//  LocationsView.swift
//  Rint
//
//  Created by Şiyar Palabıyık on 1.07.2024.
//

import SwiftUI

struct LocationsView: View {
    var body: some View {
        VStack{
            
            ScrollView(.horizontal) {
                HStack (spacing: 15){
                    LocationCellModel(placeName: "Bai Bayraklı", placeLocation: "Bayraklı", placeCoordinate: (longitude: 4454, latitude: 22), placeImage: "image", totalSub: 321, onlineUsers: 43)
                        
                    
                    LocationCellModel(placeName: "Kalt", placeLocation: "Bornova", placeCoordinate: (longitude: 22, latitude: 33), placeImage: "image", totalSub: 22, onlineUsers: 23)
                    
                    LocationCellModel(placeName: "A", placeLocation: "A", placeCoordinate: (longitude: 22, latitude: 33), placeImage: "image", totalSub: 22, onlineUsers: 23)
                    
                    LocationCellModel(placeName: "A", placeLocation: "A", placeCoordinate: (longitude: 22, latitude: 33), placeImage: "image", totalSub: 22, onlineUsers: 23)
                    LocationCellModel(placeName: "A", placeLocation: "A", placeCoordinate: (longitude: 22, latitude: 33), placeImage: "image", totalSub: 22, onlineUsers: 23)
                }
            }
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
    LocationsView()
}
