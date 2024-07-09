//
//  ContentView.swift
//  BoredSUI
//
//  Created by Şiyar Palabıyık on 9.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var isHidden = false
    @State var adviceCounter = 0
    @State private var advice : AdviceModel?
    
    let boredViewModel = BoredViewModel()
    
    var body: some View {
        VStack {
            if isHidden == false{
                Text("Tap For Magic!")
                Button("Tap!"){
                    isHidden = true
                    adviceCounter += 1
                }
            }
            else{
                Text("Advice \(adviceCounter)")
                    .padding()
                Text("\(advice!.activity)")
                    .padding()
                Text("Type : \(advice!.type)")
                Text("Accessibility : \(advice!.availability)")
                Text("Price : \(advice!.price)")
                Button(action: {
                    adviceCounter += 1
                    Task{
                        do{
                            advice = try await boredViewModel.getAdvice()
                            print(advice)
                        } catch Errors.JSONParseError{
                           print("Json Parse Error")
                        } catch Errors.invalidResponse {
                            print("Resp Err")
                        } catch Errors.invalidUrl {
                            print("ınval Url")
                        } catch {
                            print("Unexpected Err.")
                        }
                    }
                }, label: {
                    Text("Another Advice")
                })
                    .padding()
                
            }

        }.task {
            do{
                advice = try await boredViewModel.getAdvice()
                print(advice)
            } catch Errors.JSONParseError{
               print("Json Parse Error")
            } catch Errors.invalidResponse {
                print("Resp Err")
            } catch Errors.invalidUrl {
                print("ınval Url")
            } catch {
                print("Unexpected Err.")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
