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
            Spacer()
            if let shoppingCartTotal = viewModel.shoppingCartTotal{
                HStack{
                    Text("The total of the groceries is:")
                    Text("\(shoppingCartTotal.total.formatted())")
                }
                HStack{
                    Text("The total HST is:")
                    Text("\(shoppingCartTotal.hst.formatted())")
                }
                HStack{
                    Text("Your total cost is:")
                    Text("\(shoppingCartTotal.totalAmountWithHST.formatted())")
                }
                
            } else {
                ContentUnavailableView("Unable to evaluate", systemImage: "gear.badge.questionmark" , description: Text("\(viewModel.recoverySuggestion)"))
            }
            
            TextField("Item 1", text: $viewModel.providedItem1)
                .padding(5)
            TextField("Item 2", text: $viewModel.providedItem2)
                .padding(5)
            TextField("Item 3", text: $viewModel.providedItem3)
                .padding(5)
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ShoppingCartTotalView()
}
