//
//  QuoteModel.swift
//  QuoteCardApp
//
//  Created by Brent on 2/2/2022.
//

import Foundation

class QuoteModel:ObservableObject {
    
    @Published var quotes:[Quote]
    
    init() {
        quotes = DataService.getQuotes()
    }
    
}
