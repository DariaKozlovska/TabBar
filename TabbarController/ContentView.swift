//
//  ContentView.swift
//  TabbarController
//
//  Created by Daria Kozlovska on 28/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            TopRatedView()
                .tabItem{
                    Label("Top Rated", systemImage: "star.fill")
                }
            BookmarksView()
                .tabItem{
                    Label("Books", systemImage: "book.fill")
                }
            ContactsView()
                .tabItem{
                    Label("Contacts", systemImage: "person.crop.circle")
                }
        }
    }
}

struct ContactsView: View {
    var body: some View {
        VStack {
            Text("Contacts")
                .font(.largeTitle)
                .bold()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color(.darkGray))
    }
}

struct BookmarksView: View {
    var body: some View{
        VStack{
            Text("Bookmarks")
                .font(.largeTitle)
                .bold()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color(.gray))
    }
}

struct TopRatedView: View{
    var body: some View{
        VStack{
            Text("TopRated")
                .font(.largeTitle)
                .bold()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color(.lightGray))
    }
}

#Preview {
    ContentView()
}
