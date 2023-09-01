//
//  ContentView.swift
//  RunMate
//
//  Created by Nabiha Sharif on 8/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.96, green: 0.9, blue: 0.87)
                    .ignoresSafeArea()
                ZStack {
                    Color(red: 0.85, green: 0.74, blue: 0.68)
                        .padding(40)
                        .cornerRadius(150)
                    VStack{
                        Text("RunMate")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.328, brightness: 0.401)/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.vertical, 44.0/*@END_MENU_TOKEN@*/)
                        
                        
                        Image("runmate_logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(/*@START_MENU_TOKEN@*/.all, 30.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 280.0)
                        
                        ZStack {
                            Color(red: 0.55, green: 0.44, blue: 0.39)
                                .cornerRadius(60)
                                .padding()
                                .padding()
                                .frame(height: 130.0)
                                .frame(width: 260.0)
                            
                            NavigationLink(destination: mainPage()) {
                                Text("Run It")
                                    .font(.headline)
                                    .fontWeight(.black)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                            
                                
                            }
                            
                        }
                        .padding(.bottom, 40.0)
                    }
                    
                }
                .shadow(radius: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
