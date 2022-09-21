//
//  RadioTopSectionView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct RadioTopSectionView: View {

    let radioItem: RadioModel

    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            
            Text(radioItem.category.rawValue)
                .foregroundColor(.secondary)
                .textCase(.uppercase)
                .font(.caption)

            Text(radioItem.title)
                .foregroundColor(.primary)
                .font(.title3)

            Text(radioItem.subtitle)
                .foregroundColor(.secondary)
                .font(.caption)

            ZStack(alignment: .bottomLeading) {
                if let imageName = radioItem.imageName {
                    Image(imageName)
                        .resizable()
                        .cornerRadius(Metrics.imageCornerRadius)
                }

                if let description = radioItem.description {
                    Text(description)
                        .font(.caption)
                        .padding(Metrics.padding)
                        .foregroundColor(.white)
                }
            }
        }
        .padding(.horizontal, Metrics.padding)
    }
}

struct RadioTopSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RadioTopSectionView(radioItem: RadioModel.getPreviewData()[0])
            .frame(width: UIScreen.main.bounds.width - 16,
                   height: UIScreen.main.bounds.height / 3)
    }
}

extension RadioTopSectionView {
    enum Metrics {
        static let imageCornerRadius: CGFloat = 5
        static let padding: CGFloat = 8
    }
}
