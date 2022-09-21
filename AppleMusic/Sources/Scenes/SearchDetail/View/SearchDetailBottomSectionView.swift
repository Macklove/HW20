//
//  SearchDetailBottomSectionView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct SearchDetailBottomSectionView: View {

    let model: ModelData
    let title: String
    let isTwoRow: Bool

    let rows = [GridItem(.fixed(200))]
    let twoRows = [
        GridItem(.fixed(200)),
        GridItem(.fixed(200))
    ]

    var body: some View {
        VStack(alignment: .leading) {
            SearchDetailHeaderView(title: title)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: isTwoRow ? twoRows : rows) {
                    ForEach(model.stations) { item in
                        SearchDetailBottomSectionCellView(model: item)
                    }
                    .frame(width: Metrics.frameWidth)
                }
            }
        }
    }
}

struct SearchDetailBottomSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailBottomSectionView(model: ModelData(), title: "Test", isTwoRow: true)
    }
}

extension SearchDetailBottomSectionView {
    enum Metrics {
        static let frameWidth: CGFloat = (UIScreen.main.bounds.width - 22) / 2
    }
}
