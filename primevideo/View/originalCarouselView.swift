//
//  originalCarouselView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import SwiftUI

struct originalCarouselView: View {
    let screenSize: CGRect = UIScreen.main.bounds

    
    var showModel = showViewModel()
    var body: some View {
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        HStack{
        ScrollView(.horizontal){
            HStack{
                ForEach(showModel.shows){
                    show in
                    if(show.original == true){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(show.cover).resizable().frame(width: screenWidth/2.60, height: screenHeight/3.8)
                        }).clipShape(RoundedRectangle(cornerRadius: 10.0))
                        
                    }
                }
            }
        }.scrollIndicators(.hidden)
        }
    }
}

#Preview {
    originalCarouselView()
}
