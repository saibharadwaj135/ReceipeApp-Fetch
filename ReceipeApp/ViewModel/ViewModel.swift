//
//  ViewModel.swift
//  ReceipeApp
//
//  Created by Sai bharadwaj Adapa on 4/11/25.
//

import Foundation

@MainActor
class ViewModel: ObservableObject {
    @Published var receipes : [Receipes] = [Receipes]()
  
    func getReceipes() async{
        let dataService = DataService()
        let receipesList = await dataService.getData()
        
            self.receipes = receipesList
       
    }
}
