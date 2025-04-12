//
//  DataService.swift
//  ReceipeApp
//
//  Created by Sai bharadwaj Adapa on 4/11/25.
//

import Foundation

struct DataService{
    
    func getData() async -> [Receipes]{
        
        if let url = URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json"){
            let request = URLRequest(url:url)
            
            do{
                let (data,_) = try await URLSession.shared.data(for: request)
                //decoding the json file
                let decoder = JSONDecoder()
                
                do{
                    let result = try decoder.decode(DataModel.self, from: data)
                    return result.recipes
                }catch{
                    print(error)
                }
            }catch{
                print(error)
            }
        }
        
        return [Receipes]()
    }
}
