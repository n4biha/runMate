//
//  ViewB.swift
//  RunMate
//
//  Created by Nabiha Sharif on 9/1/23.
//

import SwiftUI

struct ViewB: View {
    var body: some View {
        ZStack{
            Color(red: 0.96, green: 0.9, blue: 0.87)
                .ignoresSafeArea()
            Image(systemName:"figure.strengthtraining.functional" )
                .foregroundColor(Color.brown)
                .font((.system(size:100)))
        }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
