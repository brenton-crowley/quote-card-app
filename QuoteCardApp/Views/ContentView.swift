//
//  ContentView.swift
//  QuoteCardApp
//
//  Created by Brent on 2/2/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model:QuoteModel = QuoteModel()
    
    var body: some View {
        NavigationView {
               
            ScrollView {
                
                VStack (alignment: .leading, spacing: 20) {
                    
                    ForEach(model.quotes) { quote in
                        
                        NavigationLink {
                            QuoteDetailView(quote: quote)
                                .navigationTitle(quote.person)
                        } label: {
                            QuoteCardView(quote:quote)
                                .padding(.bottom)
                        }
                        

                        // implement navigation link
                        // implement detail view of quote
                        // update quote data
                    }.navigationTitle("Quotes")
                }.padding(.horizontal)
            }
            
        }
    }
}

struct QuoteCardView:View {
    
    let quote:Quote
    
    var body: some View {
        
        ZStack (alignment: .leading) {
            
            //image
            Image(quote.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            // vstack
            VStack (alignment: .leading) {
                
                // first quote
                
                Text(quote.quotes.randomElement() ?? "")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 5)
                // person
                Text("— \(quote.person)")
                    .font(.caption)
                    .fontWeight(.medium)
                
            }.foregroundColor(.white)
            .shadow(radius: 2)
            .padding()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
