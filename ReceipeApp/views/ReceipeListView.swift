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
            ZStack {
                
                LinearGradient(colors: [Color(red: 0.99, green: 0.47, blue: 0.42),
                                        Color(red: 0.97, green: 0.73, blue: 0.41)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                VStack{
                    
                    if viewModel.receipes.count > 0 {
                        List(viewModel.receipes , id : \.uuid) { receipe in
                            NavigationLink {
                                DetailReceipeView(receipe: receipe)
                            } label: {
                                ReciepeRow(receipe: receipe)
                                    .background(Color.clear)
                            }
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)

                        }
                        .scrollContentBackground(.hidden)
                        .listStyle(.plain)
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
            }
            
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
