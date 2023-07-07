//
//  ActivityScreen.swift
//  Activity Tracker
//
//  Created by Hafidz Ismail Hidayat on 17/04/23.
//

import SwiftUI

struct ActivityScreen: View {
    @State var isPresented: Bool = false
    @Binding var age : String
    @Binding var name : String
    @Binding var Chores : Bool
    @Binding var Duty : Bool
    @Binding var Basic : Bool
    @Binding var selfNeeds : Bool
    
    @State var activity : String = ""
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack{
                ZStack {
                    Color("Morning Dew Haze")
                        .ignoresSafeArea()
                    //                VStack{
                    ////                    List {
                    ////                        Text("Hai")
                    ////                        Text("Hai")
                    ////                    }
                    //
                    //                }
                    VStack {
                        ActivityList()
                        Spacer()
                        Button{
                            isPresented.toggle()
                        }label:{
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: geometry.size.height * 0.1)
                                .foregroundColor(Color("Aqua Lake"))
                                .offset(x: 0, y: -40)
                            
                        }
                        .sheet(isPresented: $isPresented){
                            MainScreen(name: $name, age: $age, isPresented: $isPresented)
                                .presentationDetents([.large])
                        }
                        
                    .navigationBarBackButtonHidden(true)
                    }
                }
            }

        }
    }
}

struct ActivityList: View{
    var body: some View{
        ZStack{
            Color("DelicateWhite")
                .frame(height: 80)
            HStack (spacing: 20){
                Color(.blue)
                    .frame(width: 20)
                    .frame(height: 20)
                VStack (alignment: .leading, spacing: 5){
////                    Text("\(")
//                        .font(.headline)
//                        .fontWeight(.semibold)
                    Text("Category")
                        .font(.caption)
                }
                Spacer()
                Text("Duration")
            }
            .padding(.all,20)
        }
        .cornerRadius(20) /// make the background rounded
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color("DelicateWhite"), lineWidth: 5)
        )
        .padding(.horizontal)


    }
}
struct ActivityScreen_Previews: PreviewProvider {
    static var previews: some View {
        ActivityScreen(age: .constant(""), name: .constant(""))
    }
}
