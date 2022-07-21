//
//  CellImage.swift
//  MovieDetailViewer
//
//  Created by Carki on 2022/07/21.
//

import Foundation

struct Movie {
    var image: String
    var title: String
}

struct movieDetail {
    let movie: [Movie] = [
        Movie(image: "도둑들", title: "도둑들"),
        Movie(image: "명량", title: "명량"),
        Movie(image: "베테랑", title: "베테랑"),
        Movie(image: "부산행", title: "부산행"),
        Movie(image: "신과함께인과연", title: "신과함게인과연"),
        Movie(image: "신과함께죄와벌", title: "신과함께죄와벌"),
        Movie(image: "아바타", title: "아바타"),
        Movie(image: "암살", title: "암살"),
        Movie(image: "어벤져스엔드게임", title: "어벤져스엔드게임"),
        Movie(image: "왕의남자", title: "왕의남자"),
        Movie(image: "태극기휘날리며", title: "태극기휘날리며"),
        Movie(image: "해운대", title: "해운대")
    ]
}
