//
//  topCarouselView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 17/11/23.
//

import SwiftUI

struct topCarouselView: View {
    let screenSize: CGRect = UIScreen.main.bounds
    @State public var type: String = "action"
    
    var showModel = showViewModel()
    var body: some View {
        let imageWidth = (screenSize.width/1.7)
        let imageHeight = (imageWidth/16)*9
        
        let topTenShows = showModel.shows.filter { show in
            return show.topTenPosition != 0
            
        }
        
        VStack{
            HStack{
                Text("Prime").foregroundStyle(.blue).bold().font(.title2) +
                Text(" - Top 10 in Italy").bold().font(.title2)
                Spacer()
                
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(topTenShows.sorted(by: { show1, show2 in
                        show1.topTenPosition < show2.topTenPosition
                    })){ show in
                        ZStack{
                            Rectangle().frame(width: imageWidth, height: imageHeight).foregroundStyle(.clear)
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                ZStack{
                                    HStack{
                                        Spacer()
                                        Image(show.cover2).resizable().frame(width: imageWidth/1.2, height: imageHeight/1.2).clipShape(RoundedRectangle(cornerRadius: 10.0))
                                    }
                                    HStack{
                                        Image("\(show.topTenPosition)").resizable().frame(width: imageWidth/4, height: imageHeight)
                                        Spacer()
                                    }
                                    
                                }
                            })
                            
                            
                        }
                        
                        
                        
                    }
                }
            }.scrollIndicators(.hidden)
        }.preferredColorScheme(.dark)
        
    }
}

#Preview {
    topCarouselView()
}
