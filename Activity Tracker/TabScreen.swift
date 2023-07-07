//
//  TabScreen.swift
//  Activity Tracker
//
//  Created by Hafidz Ismail Hidayat on 18/04/23.
//

import SwiftUI

enum Tabs : String {
    case Activity
    case Summary
}

struct TabScreen: View {
    @State var selectedTab: Tabs = .Activity
    
    
    var body: some View {
        NavigationStack{
            TabView(selection: $selectedTab) {
                ActivityScreen(age: .constant(""), name: .constant(""))
                    .tabItem {
                        Label ("Activity", systemImage: "list.bullet.clipboard")
                    }
                    .tag(Tabs.Activity)
                
                ResultScreen()
                    .tabItem {
                        Label ("Summary", systemImage: "chart.pie")
                    }
                    .tag(Tabs.Summary)
            }
            .onAppear(){
                UITabBar.appearance().backgroundColor = .white
            }
            .navigationTitle(selectedTab.rawValue)
        }
        .navigationBarBackButtonHidden(true)
            .tint(Color("Aqua Lake"))


    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
