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
