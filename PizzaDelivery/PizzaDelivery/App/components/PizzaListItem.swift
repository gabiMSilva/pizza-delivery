//
//  PizzaListItem.swift
//  PizzaDelivery
//
//  Created by Gabriela Medeiros da Silva on 29/02/24.
//

import SwiftUI

struct PizzaListItem: View {
    let imageSrc: String;
    let pizzaFlavor: String;
    
    var body: some View {
        
        Image(imageSrc)
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 100, height: 100)
            .padding(.all, 10)
        
        VStack(alignment: .leading){
            Text(pizzaFlavor)
                .bold()
                .font(.title2)
            
            HStack(alignment: .firstTextBaseline) {
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(.accentColor)
                    Text("R$ 45,00")
            }
            
            HStack(alignment: .firstTextBaseline) {
                    Image(systemName: "clock.circle.fill")
                        .foregroundColor(.secondaryAccent)
                    Text("45 min")
            }
            

        }
    }

}

#Preview {
    PizzaListItem(imageSrc: "pizza", pizzaFlavor: "Calabresa")
}
