//
//  QuoteDetailView.swift
//  QuoteCardApp
//
//  Created by Brent on 3/2/2022.
//

import SwiftUI

struct QuoteDetailView: View {
    
    let quote:Quote?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                if let quote = quote {
                    
                    ForEach (quote.quotes, id: \.self) { q in
                        HStack (alignment: .top) {
                            Image(systemName: "quote.opening")
                            Text(q)
                            Image(systemName: "quote.closing")
                        }
                        
                    }.padding(.bottom)
                }
                
            }
        }.padding()
    }
    
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuoteModel()
        
        QuoteDetailView(quote: model.quotes[0])
    }
}
