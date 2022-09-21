//
//  PlayerTimerView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct PlayerTimerView: View {

    @State var currentTime = 0.0
    @State var duration = 122.0

    var body: some View {
        VStack {
            CustomSliderView(currentTime: $currentTime, duration: $duration)
                .frame(height: 4)

            HStack {
                Text("\(formatTime(currentTime))")
                Spacer()
                Text("-\(formatTime(duration - currentTime))")
            }
            .font(.footnote)
            .foregroundColor(Color.gray.opacity(0.5))
        }
    }

    private func formatTime(_ time: Double) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%01i:%02i", minutes, seconds)
    }
}

struct PlayerTimerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerTimerView()
    }
}
