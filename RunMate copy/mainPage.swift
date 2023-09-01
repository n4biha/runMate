//
//  mainPage.swift
//  RunMate
//
//  Created by Nabiha Sharif on 9/1/23.
//

import SwiftUI

struct mainPage: View {
    var body: some View {
        TabView{
            menuPage()
                .tabItem() {
                        Image(systemName: "house")
                        Text("Home")
            }
           ViewA()
                .tabItem() {
                        Image(systemName: "calendar")
                        Text("Calendar")
            }
            ViewB()
                .tabItem() {
                        Image(systemName: "figure.strengthtraining.functional")
                        Text("Stretch")
            }
            ViewC()
                .tabItem() {
                        Image(systemName: "ellipsis.message")
                        Text("RunBot")
            }
            ViewD()
                .tabItem() {
                        Image(systemName: "info")
                        Text("Info")
            }
            
        }
    }
}

struct mainPage_Previews: PreviewProvider {
    static var previews: some View {
        mainPage()
    }
}
