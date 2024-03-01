//
//  ContentView.swift
//  PizzaDelivery
//
//  Created by Gabriela Medeiros da Silva on 29/02/24.
//

import SwiftUI

struct HomePage: View {
    
    let pizzaImages = ["pizza", "pizza-1", "pizza-2", "pizza-3", "pizza-4"]
    
    let columns = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(pizzaImages, id: \.self) { imageName in
                    
                }
            }
            .padding(10)
        }
        .navigationTitle("Pizzas")
    }
}

#Preview {
    HomePage()
}
