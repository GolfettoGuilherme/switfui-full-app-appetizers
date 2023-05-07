//
//  OrderView.swift
//  Appetizers
//
//  Created by Guilherme Golfetto on 07/05/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Orders")
                .navigationTitle("Orders 💰")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
