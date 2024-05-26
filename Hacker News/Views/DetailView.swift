//
//  DetailView.swift
//  Hacker News
//
//  Created by Apple on 01/05/24.
//

import SwiftUI


struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url )
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}



