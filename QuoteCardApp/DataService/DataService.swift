//
//  DataService.swift
//  QuoteCardApp
//
//  Created by Brent on 2/2/2022.
//

import Foundation

class DataService {
    
    static func getQuotes() -> [Quote] {
        
        let quotes = getJSONDataForResourceName("quotes", forType: Quote.self)
        
        for quote in quotes {
            quote.id = UUID()
        }
        
//        // bundle resource
//        guard let pathResource = Bundle.main.path(forResource: "quotes", ofType: "json")  else { return [Quote]() }
//        // url
//        let url = URL(fileURLWithPath: pathResource)
//        // data
//        do {
//            let data = try Data(contentsOf: url)
//            // jsondecoder
//            let decoder = JSONDecoder()
//
//            do {
//                let quotes = try decoder.decode([Quote].self, from: data)
//
//                for quote in quotes {
//                    quote.id = UUID()
//                }
//
//                return quotes
//            } catch  {
//                print(error)
//            }
//
//            // decode
//            // set uuid
//            // return
//        } catch {
//            print(error)
//        }
        
        
        
        return quotes
        
    }
    
    static func getJSONDataForResourceName<T>(_ resourceName:String, forType modelType:T.Type) -> [T] where T : Decodable {
        
        // bundle resource
        guard let pathResource = Bundle.main.path(forResource: resourceName, ofType: "json")  else { return [T]() }
        // url
        let url = URL(fileURLWithPath: pathResource)
        // data
        do {
            let data = try Data(contentsOf: url)
            // jsondecoder
            let decoder = JSONDecoder()
            
            do {
                let json = try decoder.decode([T].self, from: data)
                                
                return json
            } catch  {
                print(error)
            }
            
            // decode
            // set uuid
            // return
        } catch {
            print(error)
        }
        
        
        return [T]()
        
    }
    
}
