//
//  showDetailView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 20/11/23.
//

import SwiftUI

struct showDetailView: View {
    @State public var currentShow: Show
    let screenWidth = UIScreen.main.bounds.width
    var body: some View {
        NavigationStack{
            ScrollView{
                
                ZStack{
                    Image(currentShow.cover2).resizable()
                    Rectangle().foregroundStyle(Gradient(colors: [.clear, .clear, .black]))
                    Text(currentShow.name).font(.title).bold().frame(width: screenWidth, height: (screenWidth/16)*9, alignment: .bottomLeading)
                }.frame(width: screenWidth, height: (screenWidth/16)*9)
                
                
                NavigationLink(destination: videoView().navigationBarBackButtonHidden(), label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 5.0)
                            .foregroundStyle(.white)
                            .frame(width: screenWidth * 0.9, height: ((screenWidth)/16) * 2 )
                        HStack{
                            Image(systemName: "play.fill")
                            Text("Play")
                        }.foregroundStyle(.black)
                    }
                })
                .padding(.vertical, 20)
                .font(.title2)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 5.0)
                            .foregroundStyle(.gray)
                            .frame(width: screenWidth * 0.9, height: ((screenWidth)/16) * 2 )
                        HStack{
                            Image(systemName: "square.and.arrow.down")
                            Text("Download")
                        }.foregroundStyle(.white)
                    }
                })
                .font(.title2)
                
                HStack{
                    Circle().frame(width: 80)
                        .padding()
                    Circle().frame(width: 80)
                        .padding()
                    Circle().frame(width: 80)
                        .padding()
                }
                Text("After years of searching in vain, blablabla found bla bla bla, etc etc, bla bla blabla bla again and, after a long fight, good people won")
                    .frame(width: screenWidth * 0.95)
                    .bold()
                
                
                Text(" " + currentShow.printGenres())
                    .frame(width: screenWidth * 0.95, alignment: .leading)
                    .bold()
                    .padding(.vertical)
                
                
                
                
                
                related_detailTabView(currentShow: currentShow)
            }.preferredColorScheme(.dark)
        }
    }
}

#Preview {
    showDetailView(currentShow: Show(type: "series", name: "Invincible", cover: "Invincible", cover2: "Invincible2", original: true, genres: ["action", "fantasy","superheroes"], topTenPosition: 0, actors: ["dwayne johnson", "tobey maguire", "leonardo di caprio", "ryan gosling", "will smith"]))
}
