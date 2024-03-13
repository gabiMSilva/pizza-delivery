//
//  CurrencyUtils.swift
//  PizzaDelivery
//
//  Created by Gabriela Medeiros da Silva on 04/03/24.
//

import Foundation

func doubleToCurrency(value: Double) throws -> String {
    let currencyFormatter = NumberFormatter()
        currencyFormatter.locale = Locale.current
        currencyFormatter.numberStyle = .currency
    
    guard let formattedAmount = currencyFormatter.string(from: NSNumber(value: value)) else {
            throw FormattingError.currencyFormattingError
    }
    
    return formattedAmount
}
