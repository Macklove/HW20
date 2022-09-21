//
//  LibraryRowView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct LibraryRowView: View {

    var libraryItem: LibraryModel
    let onTap: (() -> ())?

    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: libraryItem.imageName)
                .resizable()
                .frame(width: Metrics.imageWidth, height: Metrics.imageWidth)
                .foregroundColor(.red)
            Text(libraryItem.title)
                .font(.title3)
                .fontWeight(.light)
        }
        .onTapGesture {
            onTap?()
        }
    }
}

struct LibraryRowView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryRowView(libraryItem: LibraryModel(title: "Плейлисты", imageName: "music.mic")) {
        }
        .previewLayout(.fixed(width: 300, height: 50))
    }
}

extension LibraryRowView {
    enum Metrics {
        static let imageWidth: CGFloat = 20
    }
}
