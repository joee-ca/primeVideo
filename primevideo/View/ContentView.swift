//
//  ContentView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedCategory = "all"
    var body: some View {
        ScrollView{
            
            HStack {
                Image("prime_logo").resizable().frame(width: 120, height: 70).colorInvert()
                Spacer()
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "tv.badge.wifi").foregroundStyle(.white)
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Circle().frame(width: 30, height: 30)
                    })
                }.padding(.horizontal)
                
            }
            HStack{
                Button(action: {
                    selectedCategory = "all"
                }, label: {
                    Text("All").frame(width: 50, height: 30)
                }).background(selectedCategory=="all" ? .white : .black).foregroundStyle(selectedCategory=="all" ? .black : .white).clipShape(Capsule())
                
                Button(action: {
                    selectedCategory = "film"
                }, label: {
                    Text("Film").frame(width: 50, height: 30)
                }).background(selectedCategory=="film" ? .white : .black).foregroundStyle(selectedCategory=="film" ? .black : .white).clipShape(Capsule())
                
                Button(action: {
                    selectedCategory = "series"
                }, label: {
                    Text("TV-Series").frame(width: 90, height: 30)
                }).background(selectedCategory=="series" ? .white : .black).foregroundStyle(selectedCategory=="series" ? .black : .white).clipShape(Capsule())
                
                
                Spacer()
            }.padding(.horizontal)
            originalCarouselView()
            
            generalCarouselView(type: "action")
            generalCarouselView(type: "fantasy")
            
            
            
        }.preferredColorScheme(.dark)
           
        
    }
}


#Preview {
    ContentView()
}
