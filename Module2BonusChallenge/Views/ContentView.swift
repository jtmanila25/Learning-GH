//
//  ContentView.swift
//  Module2BonusChallenge
//
//  Created by Jordan Kling on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
            NavigationStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        ForEach(model.quotes) { item in
                            NavigationLink(destination: DetailView(quote: item), label: {
                                RowView(quote: item)
                            })
                        }
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
