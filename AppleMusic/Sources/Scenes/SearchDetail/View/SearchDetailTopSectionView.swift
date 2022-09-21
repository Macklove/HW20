//
//  SearchDetailTopSectionView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct SearchDetailTopSectionView: View {

    let rows = [GridItem(.flexible())]
    let model: ModelData

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                TabView {
                    ForEach(model.radioPreviewData) { item in
                        SearchDetailTopSectionCellView(model: item)
                    }
                }
                .frame(width: Metrics.frameWidth, height: Metrics.frameHeight)
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
        }
    }
}

struct SearchDetailTopSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailTopSectionView(model: ModelData())
    }
}

extension SearchDetailTopSectionView {
    enum Metrics {
        static let frameWidth: CGFloat = UIScreen.main.bounds.width - 16
        static let frameHeight: CGFloat = UIScreen.main.bounds.height / 3
    }
}
