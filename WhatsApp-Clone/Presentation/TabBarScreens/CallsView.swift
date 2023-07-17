//
//  CallsView.swift
//  WhatsApp-Clone
//
//  Created by Himanshu Sherkar on 08/07/23.
//

import SwiftUI

struct CallsView: View {
    var calls: [Calls] = DummyData.calls
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            List{
                Section("Recent") {
                    ForEach(calls) { call in
                        CallsViewCell(image: call.profileImage,
                                      title: call.callTitle,
                                      time: call.time)
                    }
                }
                .foregroundColor(.black)
            }
            .listStyle(.grouped)
            .navigationTitle("Calls")
            .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search")
            .navigationBarItems(leading: Text("Edit"),
                                trailing: Image(systemName: "phone.badge.plus"))
            .foregroundColor(.blue)
        }
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}

struct CallsViewCell: View {
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
                HStack {
                    Text(title)
                        .foregroundColor(.black)
                        .font(.title3.bold())
                    
                    Spacer()
                    
                    Text(time)
                        .foregroundColor(.gray)
                    
                    Image(systemName: "info.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.blue)
                }
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.gray)
                    Text("Incomming")
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(.top, 16)
        }
    }
}
