//
//  ContentView.swift
//  ReceipeApp
//
//  Created by Sai bharadwaj Adapa on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel
    var service = DataService()
    @State var isAnimate : Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                
                LinearGradient(colors: [Color(red: 0.99, green: 0.47, blue: 0.42),
                                        Color(red: 0.97, green: 0.73, blue: 0.41)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                
                VStack {
                    
                    Image("food")
                        .resizable()
                        .frame(width: 400, height: 300)
                        .offset(y: isAnimate ? 0 : 50)
                        .animation(.easeIn(duration: 2).repeatForever(), value: isAnimate)
                    
                    Spacer()
                    Text("Wanna find Yummy 😋 receipes")
                        .font(.title)
                        .fontDesign(.monospaced)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
              
                    NavigationLink {
                        ReceipeListView()
                    } label: {
                        Text("Click Here 😋")
                            .frame(width:200,
                                   height : 60)
                            .fontDesign(.monospaced)
                            .background(Color.red)
                            .foregroundStyle(.white)
                            .font(.title2)
                            .cornerRadius(20)
                            
                            
                    }
                    
                    Spacer()
                  

                }
                .padding()
                .navigationTitle("Recipes App")
                .foregroundStyle(.white)
                .onAppear{
                    isAnimate.toggle()
                }
            }
            
        }
      
    }
}

#Preview {
    ContentView()
        .environmentObject(ViewModel())
}
