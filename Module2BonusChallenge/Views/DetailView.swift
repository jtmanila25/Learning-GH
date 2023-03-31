//
//  DetailView.swift
//  Module2BonusChallenge
//
//  Created by Jordan Kling on 3/30/23.
//

import SwiftUI

struct DetailView: View {
    
    var quote: Quote
    
    var body: some View {
        VStack {
            Text(quote.author)
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 15)
            VStack(alignment: .leading) {
                ForEach(quote.description, id: \.self) { item in
                    
                        Text(item)
                            .padding([.leading, .bottom, .trailing], 13.0)
                        
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let item = QuoteModel()
        
        DetailView(quote: item.quotes[0])
    }
}
