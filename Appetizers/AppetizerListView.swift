//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Guilherme Golfetto on 07/05/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizersListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍕 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
