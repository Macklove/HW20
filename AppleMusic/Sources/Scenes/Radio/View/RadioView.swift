//
//  RadioView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct RadioView: View {

    let rows = [GridItem(.flexible())]
    let columns = [GridItem(.flexible())]

    @State private var topSectionRadioItems = RadioModel.getPreviewData()
    @State private var bottomSectionRadioItems = RadioModel.getStations()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    TabView {
                        ForEach(topSectionRadioItems) { item in
                            RadioTopSectionView(radioItem: item)
                        }
                    }
                    .frame(width: Metrics.frameWidth, height: Metrics.frameHeight)
                    .tabViewStyle(.page(indexDisplayMode: .never))
                }
            }

            Divider()
                .padding(.all, Metrics.padding)

            LazyVGrid(columns: columns) {
                VStack(alignment: .leading) {
                    Text("Станции")
                        .font(.title2)
                        .bold()

                    ForEach(bottomSectionRadioItems) { item in
                        RadioBottomSectionView(radioItem: item)
                    }
                }
            }
            .padding(.horizontal, Metrics.padding)

            Spacer(minLength: Metrics.spacerMinLength)
        }
        .padding(.horizontal, Metrics.padding)
        .navigationTitle("Радио")
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}

extension RadioView {
    enum Metrics {
        static let padding: CGFloat = 8
        static let spacerMinLength: CGFloat = 80
        static let frameWidth: CGFloat = UIScreen.main.bounds.width - 16
        static let frameHeight: CGFloat = UIScreen.main.bounds.height / 3
    }
}
