//
//  Quote.swift
//  QuoteCardApp
//
//  Created by Brent on 2/2/2022.
//

import Foundation

class Quote:Decodable, Identifiable {
    
    var person:String
    var image:String
    var quotes:[String]
    var id:UUID?
    
}
