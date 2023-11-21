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
        ScrollView{
            ZStack{
                Image(currentShow.cover2).resizable()
                Rectangle().foregroundStyle(Gradient(colors: [.clear, .clear, .black]))
            }.frame(width: screenWidth, height: (screenWidth/16)*9)
            
        }.preferredColorScheme(.dark)
    }
}

#Preview {
    showDetailView(currentShow: Show(type: "series", name: "Invincible", cover: "Invincible", cover2: "Invincible2", original: true, genres: ["action", "fantasy","superheroes"], topTenPosition: 0, actors: ["dwayne johnson", "tobey maguire", "leonardo di caprio", "ryan gosling", "will smith"]))
}
