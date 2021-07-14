//
//  catCollectionViewCell.swift
//  catApp
//
//  Created by apple on 14/07/2021.
//

import UIKit

class catCollectionViewCell: UICollectionViewCell {
    static let identifier = "catCollectionViewCell"
    
    @IBOutlet weak var faveCatImage: UIImageView!
    @IBOutlet weak var faveCatName: UILabel!
    
}
