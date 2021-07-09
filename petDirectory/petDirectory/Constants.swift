//
//  Constants.swift
//  petDirectory
//
//  Created by apple on 09/07/2021.
//

import Foundation
import FirebaseFirestore

enum Constants {
    static let db = Firestore.firestore().collection("favouritecats")
    static let apiUrl = "https://api.thecatapi.com/v1/breeds"
}
