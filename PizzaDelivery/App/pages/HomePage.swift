//
//  ContentView.swift
//  PizzaDelivery
//
//  Created by Gabriela Medeiros da Silva on 29/02/24.
//

import SwiftUI

struct HomePage: View {
    
    let pizzaItems = [
        Pizza(price: 45.9, timeToPrepar: 45, flavor: "Calabresa", ingredients: ["Calabresa", "Queijo", "Bacon"], image: "pizza"),
        Pizza(price: 39.9, timeToPrepar: 40, flavor: "Portuguesa", ingredients: ["Calabresa", "Queijo", "Bacon"], image: "pizza-1"),
        Pizza(price: 35.9, timeToPrepar: 60, flavor: "Frango com Catupiry", ingredients: ["Calabresa", "Queijo", "Bacon"], image: "pizza-2"),
        Pizza(price: 50.0, timeToPrepar: 60, flavor: "Milho", ingredients: ["Calabresa", "Queijo", "Bacon"], image: "pizza-3"),
        Pizza(price: 29.9, timeToPrepar: 35, flavor: "4 Queijos", ingredients: ["Calabresa", "Queijo", "Bacon"], image: "pizza-4"),
        Pizza(price: 42.0, timeToPrepar: 40, flavor: "À moda", ingredients: ["Calabresa", "Queijo", "Bacon"], image: "pizza-1"),
        Pizza(price: 52.9, timeToPrepar: 55, flavor: "Banana", ingredients: ["Calabresa", "Queijo", "Bacon"], image: "pizza")
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(pizzaItems, id: \.self.flavor) { item in
                    PizzaListItem(pizzaItem: item)
                        .frame(width: 150)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    HomePage()
}
