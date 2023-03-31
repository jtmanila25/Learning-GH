//
//  QuoteModel.swift
//  Module2BonusChallenge
//
//  Created by Jordan Kling on 3/30/23.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }
}
