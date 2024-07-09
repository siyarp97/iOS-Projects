//
//  ProductCell.swift
//  MyBasicStore
//
//  Created by Şiyar Palabıyık on 9.07.2024.
//

import SwiftUI

struct ProductCell: View {
    let title : String
    let price : String
    let description : String
    let category : String
    let rate : Double

    let resim : String
    
    init(title: String, price: String, description: String, category: String, rate: Double,  image : String) {
        self.title = title
        self.price = price
        self.description = description
        self.category = category
        self.rate = rate
        self.resim = image
    }

    var body: some View {
 
            ZStack{
               
                    RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(gradient: Gradient(
                            colors: [Color.white, Color.white.opacity(0.8)]),
                                       startPoint: .top,
                                       endPoint: .bottom))
                        .frame(width: 300, height: 500)
                        .shadow(color: Color.secondary,radius: 10,x: -5, y:10)
                VStack{
                    AsyncImage(url: URL(string: resim)){ image in
                        image.image?.resizable()
                            .scaledToFit()
                    }.background(.black)
                        .frame(width: 200, height: 200, alignment:.top)
                        
                    
                    Text(title)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .scaledToFit()
                        .frame(width: 230)
                        .padding(.top, 20)
                    
                    Text(description)
                        .font(.system(size: 15, design: .default))
                        .frame(width: 230, height: 70)
                        .scaledToFit()
                    Text("$ " + price)
                        .font(.system(size: 15, weight: .bold, design: .default))
                        .scaledToFit()
                        .padding(.top, 10)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "basket")
                            Text("Sepete Ekle")
                                .font(.system(size: 15))
                        }
                    })
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                    .padding()
                }
                    


            }.padding()
        
    }
}

#Preview {
    ProductCell(title: "Test", price: "Test", description: "Test", category: "Test", rate: 3, image:"https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg")
}
