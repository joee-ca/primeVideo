//
//  cast&crewCarouselView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 20/11/23.
//

import SwiftUI

struct cast_crewCarouselView: View {
    @State public var currentShow: Show
    let screenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        let screenWidth = screenSize.width
        let imageHeight = (screenSize.height/5.5)
        let imageWidth = (imageHeight/16)*9
        let textSpace = screenWidth - imageWidth
        VStack{
            HStack{
                Text("Cast & Crew")
                    .font(.title3)
                    .bold() +
                Text("\nDetails from IMDb")
                    .bold()
                    .foregroundStyle(.gray)
                Spacer()
            }
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(currentShow.actors.indices){ index in
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            ZStack{
                                Image(currentShow.actors[index])
                                    .resizable()
                                    .frame(width: imageWidth, height: imageHeight)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: imageWidth, height: imageHeight)
                                    .foregroundStyle(Gradient(colors: [.clear,.clear,.black]))
                                
                                
                                    Text(currentShow.actors[index])
                                        .frame(width: imageWidth, height: imageHeight, alignment: .bottom)
                                        .bold()
                                        .foregroundStyle(.white)
                                
                            }
                        })
                       .accessibilityLabel(currentShow.actors[index])
                        
                        
                    }
                }
                Divider()
               
            }.scrollIndicators(.hidden)
            HStack{
                ZStack{
                    Image("tobey maguire")
                        .resizable()
                        .frame(width: imageWidth, height: imageHeight)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    VStack{
                        Text("tobey maguire")
                            .frame(width: imageWidth, height: imageHeight, alignment: .bottom)
                            .bold()
                            .foregroundStyle(.white)
                    }
                }
                VStack{
                    Text("Director")
                        .font(.title3)
                        .bold() +
                    Text("\nKnown for: his most famous film (2013), some other famous film (2022) and, of course, another famous film (2010)")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.gray)
                    Spacer()
                }.frame(width: textSpace, height: imageHeight)
                Spacer()
            }.padding(.vertical)
        }.preferredColorScheme(.dark)
    }
}

#Preview {
    cast_crewCarouselView(currentShow: Show(type: "series", name: "Invincible", cover: "Invincible", cover2: "Invincible2", original: true, genres: ["action", "fantasy","superheroes"], topTenPosition: 0, actors: ["dwayne johnson", "tobey maguire", "leonardo di caprio", "ryan gosling", "will smith"]))
}
