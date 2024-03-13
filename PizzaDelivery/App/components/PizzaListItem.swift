//
//  PizzaListItem.swift
//  PizzaDelivery
//
//  Created by Gabriela Medeiros da Silva on 29/02/24.
//

import SwiftUI

struct PizzaListItem: View {

    private var formattedAmount: String = ""
    
    let pizzaItem: Pizza
    
    init(pizzaItem: Pizza) {
        self.pizzaItem = pizzaItem
        self.formattedAmount = getPrice(price: pizzaItem.price)
    }
    
    func getPrice(price: Double) -> String {
        do {
            let value = try doubleToCurrency(value: price)
            return value;
        } catch {
            return String(price)
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
            Image(pizzaItem.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 90, height: 80)
                .padding(.all, 5)
            
            VStack(alignment: .center){
                Text(pizzaItem.flavor)
                    .font(.subheadline)
                    .bold()
                    .padding(.bottom, 2)
                    .lineLimit(1)
                
                HStack() {
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(.accent)
                    Text(formattedAmount)
                        .font(.subheadline)
                }
                
                HStack() {
                    Image(systemName: "clock.circle.fill")
                        .foregroundColor(.secondaryAccent)
                    Text("\(String(pizzaItem.timeToPrepar)) min")
                        .font(.subheadline)
                }
            }
        }
    }
}

#Preview {
    PizzaListItem(pizzaItem: Pizza(price: 50.0, timeToPrepar: 34, flavor: "Calabresa", ingredients: ["molho", "mussarela", "calabresa", "cebola"], image: "pizza"))
}
