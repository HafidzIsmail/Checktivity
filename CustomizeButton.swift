//
//  Button.swift
//  Activity Tracker
//
//  Created by Hafidz Ismail Hidayat on 18/04/23.
//

import SwiftUI

struct CustomizeButton: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    
    var body: some View {
        ZStack{
            Capsule()
                .frame(height:50)
                .foregroundColor(isSelected ? color : Color("DelicateWhite"))
            Text(text)
                .foregroundColor(Color("DelicateFont"))
                .font(.body)
        }
    }
}

struct CustomizeButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeButton(isSelected: .constant(false), color: Color("DelicateWhite"), text: "Option")
    }
}
