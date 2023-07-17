//
//  ContentView.swift
//  WhatsApp-Clone
//
//  Created by Himanshu Sherkar on 08/07/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ProfileSectionView()
                    SettingsViewCell(label: "Avatar", image: "person.crop.square.fill", tintColour: .purple)
                }
                
                Section {
                    SettingsViewCell(label: "Starred Messages", image: "star.square.fill", tintColour: .yellow)
                    SettingsViewCell(label: "Linked Devices", image: "desktopcomputer", tintColour: .green)
                }
                
                Section {
                    SettingsViewCell(label: "Account", image: "key.fill", tintColour: .blue)
                    SettingsViewCell(label: "Privacy", image: "lock.square.fill", tintColour: .cyan)
                    SettingsViewCell(label: "Chats", image: "message.fill", tintColour: .green)
                    SettingsViewCell(label: "Notifications", image: "bell.badge", tintColour: .red)
                    SettingsViewCell(label: "Payments", image: "indianrupeesign.square.fill", tintColour: .teal)
                    SettingsViewCell(label: "Storage and Data", image: "arrow.up.arrow.down.square.fill", tintColour: .green)
                }
                
                Section {
                    SettingsViewCell(label: "Help", image: "info.square.fill", tintColour: .blue)
                    
                    SettingsViewCell(label: "Temm a Friend", image: "heart.square.fill", tintColour: .pink)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Settings")
            .searchable(text: $searchTerm, placement: .automatic, prompt: "Search")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct SettingsViewCell: View {
    
    var label: String
    var image: String
    var tintColour: Color
    
    var body: some View {
        NavigationLink(destination: Text(label)) {
            HStack(spacing: 12) {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 29, height: 29)
                    .foregroundColor(tintColour)
                    .cornerRadius(6)
                Text(label)
            }
        }
    }
}

struct ProfileSectionView: View {
    var body: some View {
        HStack(spacing: 12) {
            Image("Brimstone")
                .resizable()
                .scaledToFit()
                .foregroundColor(.gray)
                .frame(width: 48, height: 48)
                .cornerRadius(50)
            
            VStack(alignment: .leading) {
                Text("Himanshu Sherkar")
                    .font(.title2)
                Text("iOS Developer")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(systemName: "qrcode.viewfinder")
                .foregroundColor(.blue)
        }
    }
}
