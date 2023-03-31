//
//  DataService.swift
//  Module2BonusChallenge
//
//  Created by Jordan Kling on 3/30/23.
//

import Foundation

class DataService {
    static func getLocalData() -> [Quote] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [Quote]()
        }
        
        let url = URL(filePath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                
                // Return the recipes
                return quoteData
            }
            catch {
                // error with parsing JSON
                print(error)
            }
            


        }
        catch {
            print(error)
        }
        return [Quote]()
    }
}
