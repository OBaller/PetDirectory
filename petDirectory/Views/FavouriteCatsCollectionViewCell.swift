//
//  FavouriteCatsCollectionViewCell.swift
//  petDirectory
//
//  Created by apple on 03/07/2021.
//

import UIKit

class FavouriteCatsCollectionViewCell: UICollectionViewCell {
    static let identifier = "FavouriteCatsCollectionViewCell"
    
    @IBOutlet weak var faveCatsImageView: UIImageView!
    @IBOutlet weak var faveCatNameLabel: UILabel!

    @IBAction func didTapFavourite(_ sender: UIButton) {
    }
}
