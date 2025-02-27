//
//  ContentView.swift
//  ShoppingCartTotal
//
//  Created by Julien Hwang on 27/2/2025.
//

import SwiftUI

struct ShoppingCartTotalView: View {
    
    @State var viewModel = CartViewModel()
    
    var body: some View {
        
        VStack {
            
            if let shoppingCartTotal = viewModel.shoppingCartTotal{
                HStack{
                    Text("The total of the groceries is:")
                        .padding()
                    Text("\(shoppingCartTotal.total.formatted())")
                        .padding()
                }
                HStack{
                    Text("The total HST is:")
                        .padding()
                    Text("\(shoppingCartTotal.hst.formatted())")
                        .padding()
                }
                HStack{
                    Text("Your total cost is:")
                    Text("\(shoppingCartTotal.totalAmountWithHST.formatted())")
                }
                
            }
            
            TextField("Item 1", text: $viewModel.providedItem1)
            TextField("Item 2", text: $viewModel.providedItem2)
            TextField("Item 3", text: $viewModel.providedItem3)
        }
        .padding()
    }
}

#Preview {
    ShoppingCartTotalView()
}
