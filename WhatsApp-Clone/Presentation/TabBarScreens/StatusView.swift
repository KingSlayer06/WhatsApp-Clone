//
//  StatusView.swift
//  WhatsApp-Clone
//
//  Created by Himanshu Sherkar on 08/07/23.
//

import SwiftUI

struct StatusView: View {
    var recentStatus: [Status] = DummyData.recentStatus
    var viewedStatus: [Status] = DummyData.viewedStatus
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            List{
                UserStatusViewCell()
                
                Section("RECENT UPDATES") {
                    
                    ForEach(recentStatus) { status in
                        StatusViewCell(image: status.profileImage,
                                       title: status.statusTitle,
                                       time: status.time)
                    }
                }
                .foregroundColor(.gray)
                
                Section("VIEWED UPDATES") {
                    ForEach(viewedStatus) { status in
                        StatusViewCell(image: status.profileImage,
                                       title: status.statusTitle,
                                       time: status.time)
                    }
                }
                .foregroundColor(.gray)
                
                Section {
                    HStack {
                        Image(systemName: "lock.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.gray)
                        
                        Text("Your status updates are")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("end-to-end encrypted")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Status")
            .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search")
            .navigationBarItems(leading: Text("Privacy"))
            .foregroundColor(.blue)
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}

struct UserStatusViewCell: View {
    var body: some View {
        
        HStack(spacing: 12) {
            Image("Brimstone")
                .resizable()
                .scaledToFit()
                .foregroundColor(.gray)
                .frame(width: 56, height: 56)
                .cornerRadius(50)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("My Status")
                    .foregroundColor(.black)
                    .font(.title3.bold())
                
                Text("Add to my status")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            HStack(spacing: 36) {
                Image(systemName: "camera.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Image(systemName: "pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
            }
            
            
            
            .padding(.top, 16)
        }
    }
}

struct StatusViewCell: View {
    var image: String
    var title: String
    var time: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(image)
                .resizable()
                .scaledToFit()
                .foregroundColor(.gray)
                .frame(width: 56, height: 56)
                .cornerRadius(50)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .foregroundColor(.black)
                    .font(.title3.bold())
                
                Text(time)
                    .foregroundColor(.gray)
            }
        }
    }
}
