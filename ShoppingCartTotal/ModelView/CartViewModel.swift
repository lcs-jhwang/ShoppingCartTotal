//
//  CartViewModel.swift
//  ShoppingCartTotal
//
//  Created by Julien Hwang on 27/2/2025.
//

import Foundation

@Observable
class CartViewModel {
    
    //MARK: Stored properties
    
    var resultHistory: [ShoppingCartTotal] = []

    
    var providedItem1: String
    var providedItem2: String
    var providedItem3: String
    var recoverySuggestion: String = ""
    
    //MARK: Computed Properties
    var shoppingCartTotal: ShoppingCartTotal? {
        guard let item1 = Double(providedItem1) else {
            recoverySuggestion = "Please provide a numeric value for item 1"
            
            return nil
        }
        
        guard let item2 = Double(providedItem2) else {
            recoverySuggestion = "Please provide a numeric value for item 2"
            return nil
        }
        
        guard let item3 = Double(providedItem3) else {
            recoverySuggestion = "Please prvide a numeric value for item3"
            return nil
        }
        
        
        recoverySuggestion = ""
        return ShoppingCartTotal(item1: item1, item2: item2, item3: item3)
    }
    init(providedItem1: String = "",
         providedItem2: String = "",
         providedItem3: String = "",
         recoverySuggestion: String = ""
    ) {
        self.providedItem1 = providedItem1
        self.providedItem2 = providedItem2
        self.providedItem3 = providedItem3
        self.recoverySuggestion = recoverySuggestion
    }
    
    func saveResult() {
        
        // When there is a valid power based on user input...
        if let shoppingCartTotal = self.shoppingCartTotal {
            
            // ... save that evaluated power at the top of the history of
            // results
            //
            // NOTE: By inserting the newly evaluated power at the top of
            //       the array, we ensure the user sees
            //       the most recent result first.
            self.resultHistory.insert(shoppingCartTotal, at: 0)
        }
        
    }
}
