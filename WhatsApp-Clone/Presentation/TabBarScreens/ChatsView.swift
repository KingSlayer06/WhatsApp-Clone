//
//  ChatsView.swift
//  WhatsApp-Clone
//
//  Created by Himanshu Sherkar on 08/07/23.
//

import SwiftUI

struct ChatsView: View {
    var chats: [Chats] = DummyData.chats
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Text("Broadcast Lists")
                    Spacer()
                    Text("New Group")
                }
                
                
                ForEach(chats) { chat in
                    ZStack {
                        ChatViewCell(image: chat.profileImage,
                                     chatTitle: chat.chatTitle,
                                     chatDescription: chat.chatDescription,
                                     time: chat.time)
                        NavigationLink(destination: Text(chat.chatTitle)) {
                            EmptyView()
                        }.opacity(0)
                    }
                }
            }
            .listStyle(.grouped)
            
            .navigationTitle("Chats")
            .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search")
            .navigationBarItems(leading: Text("Edit"),
                                trailing: NavigationBarTrailingItems())
            .foregroundColor(.blue)
        }
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}

struct NavigationBarTrailingItems: View {
    var body: some View {
        HStack(spacing: 24) {
            Image(systemName: "camera")
            Image(systemName: "square.and.pencil")
        }
    }
}

struct ChatViewCell: View {
    var image: String
    var chatTitle: String
    var chatDescription: String
    var time: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(image)
                .resizable()
                .scaledToFill()
                .foregroundColor(.gray)
                .frame(width: 56, height: 56)
                .cornerRadius(50)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(chatTitle)
                        .foregroundColor(.black)
                        .font(.title3.bold())
                    
                    Spacer()
                    
                    Text(time)
                        .foregroundColor(.gray)
                }
                Text(chatDescription)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                Spacer()
            }
            .padding(.top, 16)
        }
    }
}
