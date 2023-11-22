//
//  topTabView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 16/11/23.
//

import SwiftUI

struct topTabView: View {
    @State private var current: Int = 0
    
    var showModel = showViewModel()
    
    private let screenSize: CGRect = UIScreen.main.bounds
    private let timer = Timer.publish(every: 4, on: .main, in: . common).autoconnect()
    
    var body: some View {
        let imageWidth = screenSize.width
        let imageHeight = (imageWidth/16)*9
        
        let originalShows = showModel.shows.filter { show in
            return show.original
        }
        
        TabView(selection: $current){
            ForEach(originalShows.indices){ index in
                
                ZStack{
                    
                    Rectangle().foregroundStyle(.clear)
                    
                    NavigationLink(destination: showDetailView(currentShow: originalShows[index]), label: {
                            VStack{
                                Image(originalShows[index].cover2).resizable()
                                    .tag(index)
                                    .frame(width: imageWidth, height: imageHeight)
                                    
                                Spacer()
                            }
                        }).accessibilityLabel(originalShows[index].name)
                    
                }
            }
        }
        .frame(width: imageWidth, height: imageHeight+45)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .preferredColorScheme(.dark)
        .onReceive(timer){ _ in
            withAnimation(.linear(duration: 2)){
                if(current < originalShows.count){
                    current += 1
                }else{
                    current = 0
                }
            }
        }
        
    }
}
#Preview {
    topTabView()
}
