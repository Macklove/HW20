//
//  RadioBottomSectionView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct RadioBottomSectionView: View {

    let radioItem: RadioModel

    var body: some View {
        VStack(alignment: .leading) {

            HStack(alignment: .center, spacing: Metrics.hStackSpacing) {
                if let stationImageName = radioItem.stationImageName {
                    Image(stationImageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: Metrics.frameWidth, height: Metrics.frameHeight)
                        .cornerRadius(Metrics.imageCornerRadius)
                }

                VStack(alignment: .leading) {
                    Text(radioItem.title)

                    Text(radioItem.subtitle)
                        .foregroundColor(.secondary)
                        .font(.caption)
                }
            }
            
            Divider()
                .padding(.leading, Metrics.dividerPadding)
        }
    }
}

struct RadioBottomSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RadioBottomSectionView(radioItem: RadioModel.getStations()[0])
    }
}

extension RadioBottomSectionView {
    enum Metrics {
        static let imageCornerRadius: CGFloat = 5
        static let hStackSpacing: CGFloat = 20
        static let padding: CGFloat = 8
        static let frameWidth: CGFloat = 100
        static let frameHeight: CGFloat = 100
        static let dividerPadding: CGFloat = frameWidth + hStackSpacing
    }
}
