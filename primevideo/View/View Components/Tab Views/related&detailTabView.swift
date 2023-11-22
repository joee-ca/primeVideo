//
//  related&detailTabView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 20/11/23.
//

import SwiftUI

struct related_detailTabView: View {
    @State var currentShow: Show
    @State private var showRelated: Bool = true
    let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        
        VStack{
            
            HStack(spacing: 0){
                VStack{
                    Text("Related")
                        .onTapGesture {
                            showRelated = true
                        }
                    Rectangle().frame(width: screenWidth/2, height: 3)
                }.foregroundStyle(showRelated ? .white : .gray)
                
                VStack{
                    Text("More Details")
                        .onTapGesture {
                            showRelated = false
                        }
                    Rectangle().frame(width: screenWidth/2, height: 3)
                }.foregroundStyle(showRelated ? .gray : .white)
                
            }
            .bold()
            .font(.title2)
            .padding(.vertical)
            
            if(showRelated){
                cast_crewCarouselView(currentShow: currentShow)
            }
            else{
                VStack{
                    VStack{
                        Text("Genre").font(.title2).bold().foregroundStyle(.white) +
                        Text("\n" + currentShow.printGenres()).font(.title3).bold().foregroundStyle(.gray)
                        
                    }.frame(width: screenWidth, alignment: .leading)
                    
                    Divider()
                    
                    VStack{
                        Text("Director").font(.title2).bold().foregroundStyle(.white) +
                        Text("\nTobey Maguire").font(.title3).bold().foregroundStyle(.gray)
                        
                    }.frame(width: screenWidth, alignment: .leading)
                    
                    Divider()
                    
                    VStack{
                        Text("Starring").font(.title2).bold().foregroundStyle(.white) +
                        Text("\n" + currentShow.printActors()).font(.title3).bold().foregroundStyle(.gray)
                        
                    }.frame(width: screenWidth, alignment: .leading)
                    
                    Divider()
                    
                    VStack{
                        Text("Studio").font(.title2).bold().foregroundStyle(.white) +
                        Text("\nMom's house").font(.title3).bold().foregroundStyle(.gray)
                    }.frame(width: screenWidth, alignment: .leading)
                    
                    Divider()
                }
            }
            
            
        }.preferredColorScheme(.dark)
    }
}

#Preview {
    related_detailTabView(currentShow: Show(type: "series", name: "Invincible", cover: "Invincible", cover2: "Invincible2", original: true, genres: ["action", "fantasy","superheroes"], topTenPosition: 0, actors: ["dwayne johnson", "tobey maguire", "leonardo di caprio", "ryan gosling", "will smith"]))
}
