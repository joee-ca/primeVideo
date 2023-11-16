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
    
    let screenSize: CGRect = UIScreen.main.bounds
    let timer = Timer.publish(every: 5, on: .main, in: . common).autoconnect()
    
    var body: some View {
        let imageWidth = screenSize.width
        let imageHeight = (imageWidth/16)*9
        
        let originalShows = showModel.shows.filter { show in
            return show.original
        }
        
        
        TabView(selection: $current){
            ForEach(0..<originalShows.count){ index in
                    ZStack{
                        Image(originalShows[index].cover2).resizable().tag(index)
                    }
            }
        }
        .frame(width: imageWidth, height: imageHeight)
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
    //    func increaseTag(number: inout Int)-> some View{
    //        number += 1
    //        return Text("\(number)").bold().font(.largeTitle)
    //    }
}
#Preview {
    topTabView()
}
