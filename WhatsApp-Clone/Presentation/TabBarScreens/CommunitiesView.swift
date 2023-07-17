//
//  CommunitiesView.swift
//  WhatsApp-Clone
//
//  Created by Himanshu Sherkar on 08/07/23.
//

import SwiftUI

struct CommunitiesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.3.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                VStack(alignment: .leading, spacing: 24) {
                    Text("Introducing Communities")
                        .font(.title2)
                    
                    Text("Easily orgainze your related groups and send announcements. Now, your communities, like neighbourhoods or schools, can have their own space.")
                        .foregroundColor(.gray)
                    
                    Divider().background(.gray)
                    
                    Text("Start a Community")
                        .font(.title3)
                        .foregroundColor(.blue)
                    
                    Divider().background(.gray)
                }
                .padding(.horizontal, 12)
                
                Spacer()
            }
            
            .navigationTitle("Communities")
        }
    }
}

struct CommunitiesView_Previews: PreviewProvider {
    static var previews: some View {
        CommunitiesView()
    }
}
