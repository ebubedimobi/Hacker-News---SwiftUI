//
//  ContentView.swift
//  Hacker News
//
//  Created by Ebubechukwu Dimobi on 18.07.2020.
//  Copyright © 2020 blazeapps. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List (networkManager.post) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//Post(objectID: "jvjv", points: 10, title: "hhf", url: "jfjjfrf")
//
//]

