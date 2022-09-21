//
//  PlayerDetailView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct PlayerDetailView: View {

    @Environment(\.dismiss) private var dismiss
    @Binding var isPlaying: Bool

    var body: some View {
        VStack {
            Capsule()
                .fill(.secondary)
                .frame(width: 40, height: 5)
            Spacer(minLength: 50)

            Image("albumImage")
                .resizable()
                .cornerRadius(10)
                .scaledToFit()
                .scaleEffect(isPlaying ? 1 : 0.8)
            Spacer()

            Group {
                PlayerTitleView()
                Spacer()

                PlayerTimerView()
                Spacer()

                PlayerMediaButtonsView(isPlaying: $isPlaying)
                Spacer()
            }

            Group {
                PlayerVolumeView()
                Spacer()

                PlayerOptionButtonsView()
                Spacer()
            }
        }
        .padding(.horizontal, 30)
        .gesture(
            DragGesture().onEnded { value in
                if value.location.y - value.startLocation.y > 100 {
                    dismiss()
                }
            })
    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(isPlaying: .constant(false))
    }
}
