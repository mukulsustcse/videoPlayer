//
//  ContentView.swift
//  videoPlayer
//
//  Created by M. A. Alim Mukul on 12.09.22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    // video showing with Web Link
    let url = URL(string: Constants.url1 + Constants.url2)
    
    // sample.mp4 is 1920 x 1080
    let videoRatio: CGFloat = 1080 / 1920
    
    var body: some View {
        
        GeometryReader { geo in
            
            VStack(alignment: .leading) {
                
                VideoPlayer(player: AVPlayer(url: url!))
                    .frame(height: geo.size.width * videoRatio)
                
                ScrollView {
                    
                    LazyVStack(alignment: .leading, spacing: 20) {
                    
                        Text("Description")
                            .bold()
                            .font(.title)
                        
                        Text(description)
                            .multilineTextAlignment(.leading)
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
