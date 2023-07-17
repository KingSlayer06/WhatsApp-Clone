//
//  HomeScreenView.swift
//  WhatsApp-Clone
//
//  Created by Himanshu Sherkar on 09/07/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            TabView {
                StatusView()
                    .tabItem {
                        Label("Status", systemImage: "circle.dashed")
                    }
                
                CallsView()
                    .tabItem {
                        Label("Calls", systemImage: "phone")
                    }
                
                CommunitiesView()
                    .tabItem {
                        Label("Communities", systemImage: "person.3")
                    }
                
                ChatsView()
                    .tabItem {
                        Label("Chats", systemImage: "message.fill")
                    }
                
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
                
//                LinearGradient(
//                    colors: [Color("Gold1"), Color("Gold2"), Color("Gold3"), Color("Gold4")],
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                )
//                .mask(
//                    // 1
//                    Text("Home")
//                        .font(Font.system(size: 46, weight: .bold))
//                        .multilineTextAlignment(.center)
//                )
//                .tabItem {
//                    Label("Settings", systemImage: "gear")
//                }
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
