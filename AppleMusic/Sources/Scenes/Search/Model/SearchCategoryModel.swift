//
//  SearchCategoryModel.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import Foundation

struct SearchCategoryModel: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let imageName: String
}

extension SearchCategoryModel {
    static func getData() -> [SearchCategoryModel] {
        let libraryItems = [
            SearchCategoryModel(title: "Альтернатива", imageName: "alternative"),
            SearchCategoryModel(title: "Классика", imageName: "classic"),
            SearchCategoryModel(title: "Спокойствие", imageName: "feelGood"),
            SearchCategoryModel(title: "Привет Сири", imageName: "heySiri"),
            SearchCategoryModel(title: "Хип-хоп", imageName: "hipHop"),
            SearchCategoryModel(title: "Мотивация", imageName: "motivation"),
            SearchCategoryModel(title: "Поп", imageName: "popp"),
            SearchCategoryModel(title: "Регги", imageName: "reggae"),
            SearchCategoryModel(title: "Хип-хоп на русском", imageName: "russianHipHop"),
            SearchCategoryModel(title: "Хиты на русском", imageName: "russianHits"),
            SearchCategoryModel(title: "Поп на русском", imageName: "russianPop"),
            SearchCategoryModel(title: "Рок на русском", imageName: "russianRock"),
        ]

        return libraryItems
    }
}
