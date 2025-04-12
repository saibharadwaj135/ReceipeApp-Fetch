//
//  ReceipeListView.swift
//  ReceipeApp
//
//  Created by Sai bharadwaj Adapa on 4/11/25.
//

import SwiftUI

struct ReceipeListView: View {
    @EnvironmentObject var viewModel : ViewModel
    var body: some View {
        NavigationStack{
            VStack{
                
                if(viewModel.receipes.count > 0){
                    List(viewModel.receipes , id : \.uuid) { receipe in
                        
                        NavigationLink {
                            DetailReceipeView(receipe: receipe)
                        } label: {
                            
                            ReciepeRow(receipe: receipe)
                        }
                        
                        .listRowSeparator(.hidden)
                            
                    }
                }
                else{
                    
                    Text("No Receipe Found - Internet issue")
                        .padding()
                        .font(.headline)
                    Text("No Data Found ☹️")
                        .padding()
                        .font(.headline)
                }
                
               
                
            }.navigationTitle("Recipe List 🥙")
           
            .listStyle(.plain)
            
        }.onAppear{
            Task{
                await viewModel.getReceipes()
            }
        }
    }
}
      



#Preview {
    ReceipeListView()
        .environmentObject(ViewModel())
}
