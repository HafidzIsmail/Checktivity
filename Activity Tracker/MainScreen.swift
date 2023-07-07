//
//  MainScreen.swift
//  Activity Tracker
//
//  Created by Hafidz Ismail Hidayat on 17/04/23.
//

import SwiftUI

struct MainScreen: View {
    @State var Chores = false
    @State var Duty = false
    @State var Basic = false
    @State var selfNeeds = false
    
    @State var activity : String = ""
    @Binding var name : String
    @Binding var age : String
    @Binding var isPresented: Bool
    
    
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack{
                
                //Activity Name Code
                ZStack {
                    Color("Morning Dew Haze")
                        .ignoresSafeArea()
                    VStack (alignment: .leading, spacing: 40){
                        VStack (alignment: .leading, spacing: 20){
                            Text("Activity Name")
                                .font(.headline)
                            TextField("", text: $activity)
                                .padding(.horizontal)
                                .padding(.vertical, 5)
                                .frame(height: 50)
                                .foregroundColor(Color("DelicateFont"))
                                .font(.body)
                                .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 1))
                                .background(Color("DelicateWhite"))
                                .disableAutocorrection(true)
                                .cornerRadius(15)
                        }
                        
                        //Duration Code
                        VStack (alignment: .leading, spacing: 20){
                            Text("Duration")                            .font(.headline)
                            DurationButton()
                            
                        }
                        
                        // Category Code
                        VStack(alignment: .leading, spacing: 20){
                            HStack{
                                Text("Select Activity Category")
                                    .font(.headline)
                                Image("Info")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: 20)
                                    .frame(maxHeight: 20)
                                    .foregroundColor(Color("Aqua Lake"))
                            }
                            
                            HStack{
                                CustomizeButton(
                                    isSelected: $Chores,
                                    color: Color("Aqua Lake"),
                                    text: "Chores")
                                
                                .onTapGesture{
                                    Chores .toggle()
                                    if Chores {
                                        selfNeeds = false
                                        Basic = false
                                        Duty = false
                                    }
                                }
                                CustomizeButton(
                                    isSelected: $selfNeeds,
                                    color: Color("Aqua Lake"),
                                    text: "selfNeeds")
                                
                                .onTapGesture{
                                    selfNeeds .toggle()
                                    if selfNeeds {
                                        Chores = false
                                        Basic = false
                                        Duty = false
                                    }
                                }
                            }
                            HStack{
                                CustomizeButton(
                                    isSelected: $Duty,
                                    color: Color("Aqua Lake"),
                                    text: "Duty")
                                
                                .onTapGesture{
                                    Duty .toggle()
                                    if Duty {
                                        selfNeeds = false
                                        Basic = false
                                        Chores = false
                                    }
                                }
                                CustomizeButton(
                                    isSelected: $Basic,
                                    color: Color("Aqua Lake"),
                                    text: "Basic")
                                
                                .onTapGesture{
                                    Basic .toggle()
                                    if Basic {
                                        Chores = false
                                        selfNeeds = false
                                        Duty = false
                                    }
                                }
                            }
                            
                        }
                        Spacer()
                        //                        NavigationLink(destination: TabScreen(), label: {
                        //                            Text("Add")
                        //                        })
                        NavigationLink(destination: TabScreen(), label: {
                            Text("Continue")
                        })
                        .simultaneousGesture(TapGesture().onEnded{
                            isPresented = false
                        })
                        .navigationBarBackButtonHidden(true)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .frame(height: geometry.size.height * 0.07)
                        .buttonStyle(.borderless)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color("MorningFont"), lineWidth: 2)
                        )
                        .foregroundColor(Color("DelicateWhite"))
                        .background(Color("Aqua Lake"))
                        .cornerRadius(30)
                    }
                    .navigationTitle("Add Activity")
                    .navigationBarTitleDisplayMode(.large)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                }
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen(activity: "", name: .constant(""), age: .constant(""), isPresented: .constant(false))
    }
}
