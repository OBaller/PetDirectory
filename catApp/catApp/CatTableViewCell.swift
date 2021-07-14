//
//  CatTableViewCell.swift
//  catApp
//
//  Created by apple on 14/07/2021.
//

import UIKit

class CatTableViewCell: UITableViewCell {

    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catName: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
    }
}
