//
//  ReciepeRow.swift
//  ReceipeApp
//
//  Created by Sai bharadwaj Adapa on 4/11/25.
//

import SwiftUI

struct ReciepeRow: View {
    @State var receipe: Receipes?
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .cornerRadius(15)
                .shadow(color: .accentColor,radius: 9,x: 0,y: 2)
            
            HStack(){
                
                AsyncImage(url: URL(string: receipe?.photoUrlSmall ?? "image")) { Image in
                    
                    Image.resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(20)
                      
                } placeholder: {
                    ProgressView()
                        .frame(width: 50, height: 50)
                }
                .padding(.horizontal)
               
           
              
                
                Text(receipe?.name ?? "chicken")
                    .font(.title3)
                
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    ReciepeRow()
}
