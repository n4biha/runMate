//
//  menuPage.swift
//  RunMate
//
//  Created by Nabiha Sharif on 8/31/23.
//

import SwiftUI

struct menuPage: View {
    var body: some View {
       
        ZStack{
            Color(red: 0.96, green: 0.9, blue: 0.87)
                .ignoresSafeArea()
            Image(systemName:"house" )
                .foregroundColor(Color.brown)
                .font((.system(size:100)))
        }
    

    }
}

struct menuPage_Previews: PreviewProvider {
    static var previews: some View {
        menuPage()
    }
}
