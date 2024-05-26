//
//  ContentView.swift
//  Hacker News
//
//  Created by Apple on 01/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        
        NavigationView{
            
            List(networkManager.posts) { post in
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    
                    HStack {
                        
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("Hacker App")
        }
        
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

//let posts = [ Posts(id: "1", title: "Hello1"),
//              Posts(id: "2", title: "Hello2"),
//              Posts(id: "3", title: "Hello3")]
