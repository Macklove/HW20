//
//  SearchCategoryView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct SearchCategoryView: View {

    let categoryItem: SearchCategoryModel

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            if let imageName = categoryItem.imageName {
                Image(imageName)
                    .resizable()
                    .cornerRadius(Metrics.imageCornerRadius)
            }

            if let title = categoryItem.title {
                Text(title)
                    .font(.subheadline)
                    .bold()
                    .padding(Metrics.padding)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
            }
        }
        .padding(.horizontal, Metrics.padding)
    }
}

struct SearchCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoryView(categoryItem: SearchCategoryModel.getData()[0])
            .frame(width: UIScreen.main.bounds.width / 2,
                   height: UIScreen.main.bounds.width / 3)
    }
}

extension SearchCategoryView {
    enum Metrics {
        static let imageCornerRadius: CGFloat = 7
        static let padding: CGFloat = 10
    }
}
