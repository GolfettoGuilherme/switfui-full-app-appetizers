//
//  ContentView.swift
//  Appetizers
//
//  Created by Guilherme Golfetto on 07/05/23.
//

import SwiftUI

struct AppertizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Orders")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppertizerTabView()
    }
}
