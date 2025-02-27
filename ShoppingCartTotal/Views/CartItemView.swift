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
        
        VStack {
            // Show the provided base, exponent, and result
            // in an arrangement that looks the same as how
            // we write a power on paper in math class
    
            HStack {
                
                Text("\(shoppingCartView.total.formatted())")
                    .font(.largeTitle)
            }
            
            HStack{
                
                Text("\(shoppingCartView.hst.formatted())")
                    .font(.largeTitle)
            }
                
                HStack {
 
      
                    Text("\(shoppingCartView.totalAmountWithHST.formatted())")
                        .font(.largeTitle)
                }
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Spacer()
        }
        
    
}
#Preview {
    CartItemView(shoppingCartView: ShoppingCartTotal(item1: 1, item2: 2, item3: 3))
}
