//
//  ShoppingCartTotal.swift
//  ShoppingCartTotal
//
//  Created by Julien Hwang on 27/2/2025.
//

import Foundation

struct ShoppingCartTotal {
    //MARK: Stored properties
    var item1: Double
    var item2: Double
    var item3: Double
    
    var total: Double {
        
        var solution: Double = 0.0
        solution = item1 + item2 + item3
        return solution
    }
    
    var hst: Double {
        return total * 0.13
    }
    var totalAmountWithHST: Double{
        return hst + total
    }
}
