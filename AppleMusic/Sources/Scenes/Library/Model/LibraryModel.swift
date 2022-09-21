//
//  LibraryModel.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import Foundation

struct LibraryModel: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let imageName: String
    var isSelected = false
}

extension LibraryModel {
    static func getData() -> [LibraryModel] {
        let libraryItems = [
            LibraryModel(title: "Плейлисты", imageName: "music.note.list"),
            LibraryModel(title: "Артисты", imageName: "music.mic"),
            LibraryModel(title: "Альбомы", imageName: "rectangle.stack.fill"),
            LibraryModel(title: "Телешоу и фильмы", imageName: "tv"),
            LibraryModel(title: "Видеоклипы", imageName: "music.note.tv"),
            LibraryModel(title: "Жанры", imageName: "guitars"),
            LibraryModel(title: "Сборники", imageName: "person.2.crop.square.stack"),
            LibraryModel(title: "Авторы", imageName: "music.quarternote.3"),
            LibraryModel(title: "Загружено", imageName: "arrow.down.circle"),
            LibraryModel(title: "Домашняя коллекция", imageName: "music.note.house")
        ]

        return libraryItems
    }
}
