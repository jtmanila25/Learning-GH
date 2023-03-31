//
//  RowView.swift
//  Module2BonusChallenge
//
//  Created by Jordan Kling on 3/30/23.
//

import SwiftUI

struct RowView: View {
    var quote: Quote
    
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(15)
               
            VStack(alignment: .leading) {
                Text(quote.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.bottom, 10.0)
                    .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
                Text("- " + quote.author)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
            }
        }
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(15)
        .padding([.leading, .trailing])
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        let item = QuoteModel()
        RowView(quote: item.quotes[0])
    }
}
