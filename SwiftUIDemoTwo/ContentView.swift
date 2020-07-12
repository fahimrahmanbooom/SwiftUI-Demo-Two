//
//  ContentView.swift
//  SwiftUIDemoTwo
//
//  Created by Fahim Rahman on 11/7/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        // all contains are inside this zstack
        ZStack {
            
            // background image
            // stack 2
            Image("Breakfast")
                .renderingMode(.original)
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            // top and bottom gradiend image are inside this vstack
            // stack 1
            VStack {
                
                Image("TopGradient")
                    .renderingMode(.original)
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                
                Spacer()
                
                Image("BottomGradient")
                    .renderingMode(.original)
                    .resizable()
                    .edgesIgnoringSafeArea(.bottom)
            }
            
            // texts and icons are inside this vstack
            // stack 3
            VStack {
                
                HStack {
                    
                    Text("Hardcore\nAvo Toast")
                        .fontWeight(.semibold)
                        .foregroundColor(.white).opacity(0.7)
                        .font(.title)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        print("WOW")
                    }) {
                        Image("Heart_health")
                            .foregroundColor(.red)
                    }
                    .padding()
                }
                
                Spacer()
                
                Text("Energize with this heathly and hearty breakfast")
                    .foregroundColor(.white).opacity(0.9)
                    .font(.subheadline)
                    .padding()
            }
        }.preferredColorScheme(.dark)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
