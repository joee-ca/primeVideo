//
//  originalCarouselView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import SwiftUI

struct generalCarouselView: View {
    let screenSize: CGRect = UIScreen.main.bounds
    @State public var type: String = "fantasy"
    
    var showModel = showViewModel()
    var body: some View {
        let imageWidth = (screenSize.width/1.7)
        let imageHeight = (imageWidth/16)*9
        
        VStack{
            HStack{
                Text("Prime").foregroundStyle(.blue).bold().font(.title2) +
                Text(" - " + type + " movies and shows").bold().font(.title2)
                Spacer()
                Image(systemName: "chevron.right").foregroundStyle(.white).bold()
                Spacer()
            }
            
        ScrollView(.horizontal){
            HStack{
                ForEach(showModel.shows){
                    show in
                    if(show.genres.contains(type)){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(show.cover2).resizable().frame(width: imageWidth, height: imageHeight)
                                
                        })
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .accessibilityLabel(show.name)
                    }
                }
            }
        }.scrollIndicators(.hidden)
        }.preferredColorScheme(.dark)
            
    }
}

#Preview {
    generalCarouselView(type: "fantasy")
}
