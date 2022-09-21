//
//  SearchDetailTopSectionCellView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct SearchDetailTopSectionCellView: View {

    let model: RadioModel

    var body: some View {
        VStack(alignment: .leading) {
            Divider()

            Text(model.category.rawValue)
                .foregroundColor(.secondary)
                .textCase(.uppercase)
                .font(.caption)

            Text(model.title)
                .foregroundColor(.primary)
                .font(.title3)

            Text(model.subtitle)
                .foregroundColor(.secondary)
                .font(.caption)

            ZStack(alignment: .bottomLeading) {
                if let imageName = model.imageName {
                    Image(imageName)
                        .resizable()
                        .cornerRadius(Metrics.imageCornerRadius)
                }

                if let description = model.description {
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

struct SearchDetailTopSectionCellView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailTopSectionCellView(model: RadioModel.getPreviewData()[0])
            .frame(width: UIScreen.main.bounds.width - 16,
                   height: UIScreen.main.bounds.height / 3)
    }
}


extension SearchDetailTopSectionCellView {
    enum Metrics {
        static let imageCornerRadius: CGFloat = 5
        static let padding: CGFloat = 8
    }
}
