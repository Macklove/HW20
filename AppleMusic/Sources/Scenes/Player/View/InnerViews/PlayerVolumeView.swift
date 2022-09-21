//
//  PlayerVolumeView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct PlayerVolumeView: View {
    
    @State var volume = 30.0

    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Image(systemName: "speaker.fill")

            Slider(value: $volume, in: 0...100)

            Image(systemName: "speaker.wave.3.fill")
        }
        .tint(Color.gray.opacity(0.5))
        .foregroundColor(Color.lightGray)
        .padding(.vertical, Metrics.verticalPadding)
    }
}

struct PlayerVolumeView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerVolumeView()
    }
}

extension PlayerVolumeView {
    enum Metrics {
        static let verticalPadding: CGFloat = 30
    }
}
