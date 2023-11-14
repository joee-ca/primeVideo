//
//  originalCarouselView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import SwiftUI

struct originalCarouselView: View {
    
    var showModel = showViewModel()
    var body: some View {
        
        HStack{
        ScrollView(.horizontal){
            HStack{
                ForEach(showModel.shows){
                    show in
                    if(show.original == true){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(show.cover).resizable().frame(width: 150, height: 225)
                        }).clipShape(RoundedRectangle(cornerRadius: 10.0))
                        
                    }
                }
            }
        }
        }
    }
}

#Preview {
    originalCarouselView()
}
