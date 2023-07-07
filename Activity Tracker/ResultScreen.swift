//
//  ResultScreen.swift
//  Activity Tracker
//
//  Created by Hafidz Ismail Hidayat on 17/04/23.
//

import SwiftUI

struct ResultScreen: View {
    var body: some View {
        
        VStack{
            Spacer()
            Text("Pie Chart")
                .frame(maxWidth: .infinity)
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        .foregroundColor(Color("DelicateFont"))
        .background(Color("Morning Dew Haze"))
    }
}

struct ResultScreen_Previews: PreviewProvider {
    static var previews: some View {
        ResultScreen()
    }
}
