//
//  PlayerTitleView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct PlayerTitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Travis Scott")
                    .fontWeight(.bold)
                    .foregroundColor(.primary)

                Text("Sicko mode")
                    .foregroundColor(.secondary)
            }
            .font(.title2)

            Spacer()

            Button {
                print("Option button pressed")
            } label: {
                Image(systemName: "ellipsis.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: Metrics.imageFrameWidth, height: Metrics.imageFrameWidth)
                    .foregroundColor(Color.lightGray)
            }
        }
    }
}

struct PlayerTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerTitleView()
    }
}

extension PlayerTitleView {
    enum Metrics {
        static let imageFrameWidth: CGFloat  = 24
    }
}
