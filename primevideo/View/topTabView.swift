//
//  topTabView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 16/11/23.
//

import SwiftUI

struct topTabView: View {
    
    var showModel = showViewModel()
    let screenSize: CGRect = UIScreen.main.bounds
//    let timer = Timer.publish(every: 5, on: .main, in: . common).autoconnect()
    
    var body: some View {
        let imageWidth = screenSize.width
        let imageHeight = (imageWidth/16)*9
        
        
        TabView(){
            ForEach(showModel.shows){ show in
                if(show.original){
                        Image(show.cover2).resizable().frame(width: imageWidth, height: imageHeight)
                }
                
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .preferredColorScheme(.dark)
//        .onReceive(timer){
//            
//        }
        
    }
}
#Preview {
    topTabView()
}
