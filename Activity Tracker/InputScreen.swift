//
//  InputScreen.swift
//  Activity Tracker
//
//  Created by Hafidz Ismail Hidayat on 17/04/23.
//

import SwiftUI

struct InputScreen: View {
    
    @State var name: String = ""
    @State var age: String = ""
    @Binding var activity: String
    @State var isPresented = false
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack{
                ZStack {
                    Color("Morning Dew Haze")
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        Text("Activity Checker")
                            .font(.largeTitle)
                        
                        VStack (alignment: .leading,spacing: 10) {
                            HStack{
                                Text("Name")
                                    .font(.body)
                                
                                TextField("", text: $name)
                                    .padding(.horizontal)
                                    .frame(height: 40)
                                    .frame(maxWidth: 280)
                                    .padding(.vertical, 5)
                                    .foregroundColor(Color("DelicateFont"))
                                    .font(.body)
                                    .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 1))
                                    .background(Color("DelicateWhite"))
                                    .disableAutocorrection(true)
                                    .cornerRadius(15)
                                
                            }
                            HStack{
                                Text("Age")
                                    .font(.body)
                                    .padding(.trailing, 15)
                                
                                TextField("", text: $age)
                                    .padding(.horizontal)
                                    .frame(height: 40)
                                    .frame(maxWidth: 60)
                                    .padding(.vertical, 5)
                                    .foregroundColor(Color("DelicateFont"))
                                    .font(.body)
                                    .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 1))
                                    .background(Color("DelicateWhite"))
                                    .disableAutocorrection(true)
                                    .cornerRadius(15)
                            }
                        }
                        Spacer()
                        NavigationLink(destination: TabScreen(), label: {
                            Text("Continue")
                        })
                        .font(.headline)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .frame(height: geometry.size.height * 0.06)
                        .buttonStyle(.borderless)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color("MorningFont"), lineWidth: 2)
                        )
                        .foregroundColor(Color("DelicateWhite"))
                        .background(Color("Aqua Lake"))
                        .cornerRadius(30)
                    }
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.large)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 20)
                    .foregroundColor(Color("DelicateFont"))
                }
            }
        }
    }
}

struct InputScreen_Previews: PreviewProvider {
    static var previews: some View {
        InputScreen(name: "", age: "", activity: .constant(""))
    }
}
