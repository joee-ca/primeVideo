//
//  ContentView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            HStack {
                Image("prime_logo").scaleEffect(CGSize(width: 0.2, height: 0.2))
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Image(systemName: "figure.roll")
                })
            }
            
            Spacer()
            
            ScrollView{
                
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
