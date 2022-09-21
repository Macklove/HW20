//
//  SearchDetailBottomSectionCellView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct SearchDetailBottomSectionCellView: View {
    let model: RadioModel

    var body: some View {
        VStack(alignment: .leading) {
            if let stationImageName = model.stationImageName {
                Image(stationImageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(Metrics.imageCornerRadius)
            }

            Text(model.title)
                .foregroundColor(.primary)
                .font(.caption)
                .lineLimit(1)

            Text(model.subtitle)
                .foregroundColor(.secondary)
                .font(.caption)
                .lineLimit(1)
        }
        .padding(.horizontal, Metrics.padding)
    }
}

struct SearchDetailBottomSectionItemView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailBottomSectionCellView(model: RadioModel.getStations()[0])
            .previewLayout(.fixed(width: 300, height: 300))
    }
}

extension SearchDetailBottomSectionCellView {
    enum Metrics {
        static let imageCornerRadius: CGFloat = 5
        static let padding: CGFloat = 8
        static let frameWidth: CGFloat = UIScreen.main.bounds.width / 2
        static let frameHeight: CGFloat = frameWidth
    }
}
