//
//  PlayerMediaButtonsView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct PlayerMediaButtonsView: View {

    @Binding var isPlaying: Bool

    var body: some View {
        HStack(spacing: 60) {
            createButton(imageName: "backward.fill", message: "Backward button pressed")

            Button {
                withAnimation(.spring()) {
                    isPlaying.toggle()
                }
            } label: {
                Image(systemName: isPlaying ? "play.fill" :  "pause.fill")
                    .foregroundColor(.primary)
                    .font(.system(size: Metrics.playButtonFontSize, weight: .black))
            }

            createButton(imageName: "forward.fill", message: "Forward button pressed")
        }
    }

    private func createButton(imageName: String, message: String) -> some View {
        return Button {
            print(message)
        } label: {
            Image(systemName: imageName)
                .foregroundColor(.primary)
                .font(.largeTitle)
        }
    }

}

struct PlayerMediaButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerMediaButtonsView(isPlaying: .constant(false))
    }
}

extension PlayerMediaButtonsView {
    enum Metrics {
        static let playButtonFontSize: CGFloat = 45
    }
}
