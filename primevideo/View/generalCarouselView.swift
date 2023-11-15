//
//  originalCarouselView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import SwiftUI

struct generalCarouselView: View {
    let screenSize: CGRect = UIScreen.main.bounds
    @State public var type: String = "action"
    
    var showModel = showViewModel()
    var body: some View {
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        VStack{
            HStack{
                Text("Prime").foregroundStyle(.blue).bold().font(.title2) +
                Text(" - " + type + " shows").bold().font(.title2)
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
                            Image(show.cover2).resizable().frame(width: screenWidth/1.8, height: screenHeight/7.0)
                        }).clipShape(RoundedRectangle(cornerRadius: 10.0))
                        
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
