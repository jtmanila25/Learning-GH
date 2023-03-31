//
//  Quote.swift
//  Module2BonusChallenge
//
//  Created by Jordan Kling on 3/30/23.
//

import Foundation

class Quote: Identifiable, Decodable {
    var id: Int
    var name: String
    var author: String
    var image: String
    var description: [String]
}
