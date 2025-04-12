//
//  DetailReceipeView.swift
//  ReceipeApp
//
//  Created by Sai bharadwaj Adapa on 4/11/25.
//

import SwiftUI

struct DetailReceipeView: View {
    @State var receipe: Receipes?
    var body: some View {
        NavigationStack{
            VStack(spacing:10){
                VStack{
                    AsyncImage(url: URL(string: receipe?.photoUrlLarge ?? "large")) { Image in
                        Image
                            .resizable()
                            .frame(height: 300)
                    } placeholder: {
                        ProgressView()
                            .frame(height: 400)
                    }

                
                }
                .padding(0)
                VStack(spacing: 20){
                    Text(receipe?.name ?? "chicken")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("\(receipe?.cuisine ?? "Italian") Cuisine")
                        .font(.largeTitle)
                        .fontWeight(.light)
                    
                    Text("Want to watch the tutorial?")
                        .font(.title2)
                    
                    if let url = URL(string: "\(receipe?.youtubeUrl ?? "")"){
                        Link(destination: url) {
                            Text("YouTube 📽️")
                                        .foregroundStyle(.white)
                                        .frame(width: 200, height: 50)
                                        .background(.red)
                                        .cornerRadius(20)
                        }
                    }
                    else{
                        //This is for preview purpose
                        Text("YouTube 📽️")
                                    .foregroundStyle(.white)
                                    .frame(width: 200, height: 50)
                                    .background(.red)
                                    .cornerRadius(20)
                    }
                             
                    
                    Text("Want to know more about the Dish?")
                        .font(.title2)
                    
                    if let url = URL(string: "\(receipe?.sourceUrl ?? "")"){
                        Link(destination: url) {
                            Text("Article 📜")
                                        .foregroundStyle(.white)
                                        .frame(width: 200, height: 50)
                                        .background(.orange)
                                        .cornerRadius(20)
                        }
                    }
                    else{
                        //This is for preview purpose
                        Text("Article 📜")
                                    .foregroundStyle(.white)
                                    .frame(width: 200, height: 50)
                                    .background(.orange)
                                    .cornerRadius(20)
                    }
                }
                .padding(0)
                
                Spacer()
            }
            .navigationTitle("Recipe Details")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
      
        
        
        
        
     
    }
}

#Preview {
    DetailReceipeView()
}
