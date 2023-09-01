//
//  ViewD.swift
//  RunMate
//
//  Created by Nabiha Sharif on 9/1/23.
//

import SwiftUI

struct ViewD: View {
    var body: some View {
        ZStack{
            Color(red: 0.96, green: 0.9, blue: 0.87)
                .ignoresSafeArea()
            Image(systemName:"info" )
                .foregroundColor(Color.brown)
                .font((.system(size:100)))
        }

    }
}

struct ViewD_Previews: PreviewProvider {
    static var previews: some View {
        ViewD()
    }
}
