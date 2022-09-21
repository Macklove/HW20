//
//  PlayerOptionButtonsView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct PlayerOptionButtonsView: View {
    var body: some View {
        HStack(spacing: 60) {
            createButton(imageName: "quote.bubble", message: "Lyrics button pressed")
            createButton(imageName: "airplayaudio", message: "Airplay button pressed")
            createButton(imageName: "list.bullet", message: "Playlist button pressed")
        }
    }

    private func createButton(imageName: String, message: String) -> some View {
        return Button {
            print(message)
        } label: {
            Image(systemName: imageName)
                .accentColor(Color.gray.opacity(0.8))
                .font(.title2)
        }
    }
}

struct PlayerOptionButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerOptionButtonsView()
    }
}
