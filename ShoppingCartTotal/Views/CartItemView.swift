//
//  CartItemView.swift
//  ShoppingCartTotal
//
//  Created by Julien Hwang on 27/2/2025.
//


import SwiftUI
 
struct CartItemView: View {
    
    // MARK: Stored properties
    let shoppingCartView: ShoppingCartTotal
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {
            // Show the provided base, exponent, and result
            // in an arrangement that looks the same as how
            // we write a power on paper in math class
            HStack(alignment: .center) {
                HStack(alignment: .top) {
                    
                    Text("\(shoppingCartView.total.formatted())")
                        .font(.largeTitle)
                    
                    Text("\(shoppingCartView.hst.exponent)")
                        .font(.title2)
                }
                HStack {
 
                    Text("=")
                        .font(.largeTitle)
 
                    Text("\(shoppingCartView.totalAmountWithHST.formatted())")
                        .font(.largeTitle)
                }
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Spacer()
        }
        
    }
}
 
