//
//  CatModel.swift
//  petDirectory
//
//  Created by apple on 02/07/2021.
//

import UIKit

struct CatModel: Codable {
    let id, name: String
    let image: catImage?
}

struct catImage:Codable {
    let id: String?
    let url: String?
    let width: Int?
    let height: Int?
}

    enum CodingKeys: String, CodingKey {
        case id, name
        case image
    }

typealias cat = [CatModel]
