//
//  videoView.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 22/11/23.
//

import SwiftUI
import AVKit

struct videoView: View {
    @State private var firstClick: Bool = false
    var body: some View {
            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "Rickroll", withExtension: "mp4")!))
                .ignoresSafeArea()    
    }
}

#Preview {
    videoView()
}
