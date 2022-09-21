//
//  RadioModel.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import Foundation

struct RadioModel: Identifiable, Hashable {
    let id = UUID()
    let category: Categories
    let title: String
    let subtitle: String
    let description: String?
    let imageName: String?
    let stationImageName: String?

    enum Categories: String {
        case new = "Новый выпуск"
        case favorite = "Избранная радиостанция"
    }
}

extension RadioModel {
    static func getPreviewData() -> [RadioModel] {
        let radioItems = [
            RadioModel(category: .new,
                       title: "Rap Life",
                       subtitle: "Apple Music Hip-Hop",
                       description: "Hov delivers a heck of a verse on Khaled's GOD DID.",
                       imageName: "raplife",
                       stationImageName: nil),
            RadioModel(category: .favorite,
                       title: "Танцевальная музыка",
                       subtitle: "Вперед с музыкой",
                       description: nil,
                       imageName: "lightpop",
                       stationImageName: nil),
            RadioModel(category: .favorite,
                       title: "Поп",
                       subtitle: "Пульт с лучшими треками",
                       description: nil,
                       imageName: "pop",
                       stationImageName: nil),
            RadioModel(category: .favorite,
                       title: "Хип-хоп",
                       subtitle: "То, что слушают прямо сейчас",
                       description: nil,
                       imageName: "hiphop",
                       stationImageName: "hiphopStation"),
            RadioModel(category: .favorite,
                       title: "Классика рока",
                       subtitle: "Лучшее из рока",
                       description: nil,
                       imageName: "rock",
                       stationImageName: nil),
        ]

        return radioItems
    }

    static func getStations() -> [RadioModel] {
        let radioItems = [
            RadioModel(category: .favorite,
                       title: "Музыка для расслабления",
                       subtitle: "Электронная медитация",
                       description: nil,
                       imageName: "chill",
                       stationImageName: "chillStation"),
            RadioModel(category: .favorite,
                       title: "Хип-хоп на русском",
                       subtitle: "То, что слушают прямо сейчас",
                       description: nil,
                       imageName: "hiphop",
                       stationImageName: "hiphopStation"),
            RadioModel(category: .favorite,
                       title: "Хиты",
                       subtitle: "Современные и будущие хиты",
                       description: nil,
                       imageName: "hits",
                       stationImageName: "hitsStation"),
            RadioModel(category: .favorite,
                       title: "Классика джаза",
                       subtitle: "Обязательно к прослушиванию",
                       description: nil,
                       imageName: "jazz",
                       stationImageName: "jazzStation"),
            RadioModel(category: .favorite,
                       title: "Классика хип-хопа",
                       subtitle: "Пульт с лучшими треками",
                       description: nil,
                       imageName: "pop",
                       stationImageName: "popСlassicStation"),
            RadioModel(category: .favorite,
                       title: "Поп на русском",
                       subtitle: "То, что слушают прямо сейчас",
                       description: nil,
                       imageName: "hiphop",
                       stationImageName: "popStation"),
            RadioModel(category: .favorite,
                       title: "Рок на русском",
                       subtitle: "То, что слушают прямо сейчас",
                       description: nil,
                       imageName: "rock",
                       stationImageName: "rockStation"),
        ]

        return radioItems
    }
}
