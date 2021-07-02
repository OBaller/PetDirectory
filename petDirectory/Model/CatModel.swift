//
//  CatModel.swift
//  petDirectory
//
//  Created by apple on 02/07/2021.
//

import UIKit

struct CatModel: Codable {
    let id, name: String
    let image: Image
}

struct Image:Codable {
    let id: String
    let url: String
}
