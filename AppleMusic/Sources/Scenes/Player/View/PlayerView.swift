//
//  PlayerView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct PlayerView: View {

    @State private var isFullScreenPlayer = false
    @State var isPlaying = false

    var body: some View {
        VStack {
            Spacer()

            HStack {
                Image("albumImage")
                    .resizable()
                    .frame(width: Metrics.imageFrameWidth, height: Metrics.imageFrameWidth,
                           alignment: .center)
                    .cornerRadius(Metrics.imageCornerRadius)
                    .padding()

                VStack(alignment: .leading) {
                    Text("Travis Scott")
                        .font(.headline)
                    Text("Sicko mode")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }

                Spacer()

                Button() {
                    isPlaying.toggle()
                } label: {
                    Image(systemName: isPlaying ? "play.fill" : "pause.fill")
                        .font(.title)
                        .foregroundColor(.primary)
                }

                Button {
                    print("Forward button pressed")
                } label: {
                    Image(systemName: "forward.fill")
                        .font(.title)
                        .foregroundColor(.primary)
                        .padding()
                }
            }
            .background(.bar)
        }
        .onTapGesture {
            isFullScreenPlayer.toggle()
        }
        .fullScreenCover(isPresented: $isFullScreenPlayer) {
            PlayerDetailView(isPlaying: $isPlaying)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

extension PlayerView {
    enum Metrics {
        static let imageCornerRadius: CGFloat = 10
        static let imageFrameWidth: CGFloat = 50
    }
}
