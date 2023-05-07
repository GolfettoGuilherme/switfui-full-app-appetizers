//
//  AppetizersListViewModel.swift
//  Appetizers
//
//  Created by Guilherme Golfetto on 07/05/23.
//

import SwiftUI

final class AppetizersListViewModel: ObservableObject {
    
    //-----------------------------------------------------------------------
    // MARK: - Published Properties
    //-----------------------------------------------------------------------

    @Published var appetizers: [Appetizer] = []
    
    //-----------------------------------------------------------------------
    // MARK: - Request
    //-----------------------------------------------------------------------

    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
}
