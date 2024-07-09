//
//  ContentView.swift
//  MyBasicStore
//
//  Created by Şiyar Palabıyık on 7.07.2024.
//

import SwiftUI

struct Vitrin: View {
    let StoreViewModel = ViewModel()
    @State var productList = [ProductModel]()
    
    var body: some View {
        VStack {
        
            ScrollView(.vertical){
                VStack{
                    ForEach(productList){ product in
                        ProductCell(title: product.title, price: "\(product.price)", description: product.description, category: product.category.rawValue, rate: product.rating.rate, image: product.image)

                    }
                }
            }

            
        }
        .task {
            do{
                self.productList = try await StoreViewModel.getData()
                print(productList)
            }catch Errors.invalidUrl{
                print("Invali Url")
            }
            catch Errors.invalidData{
                print("Invalid Data")
            }
            catch Errors.invalidParse {
                print("Invalid Parse")
            }
            catch{
                print("Unexpected Error")
            }
        }
        
    }
}

#Preview {
    Vitrin()
}

