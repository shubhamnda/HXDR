//
//  ContentView.swift
//  HXDR
//
//  Created by Shubham Nanda on 02/09/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts){
                post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            
            .navigationBarTitle("HXDR")
        }.onAppear(){
            self.networkManager.fetchData()
        }
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "hello"), Post(id: "2", title: "Hi"), Post(id: "3", title: "Konichiwa!!")
//]

