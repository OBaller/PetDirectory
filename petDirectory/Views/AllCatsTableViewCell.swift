//
//  AllCatsTableViewCell.swift
//  petDirectory
//
//  Created by apple on 02/07/2021.
//
import Kingfisher
import UIKit

class AllCatsTableViewCell: UITableViewCell {

    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catName: UILabel!
    
    
    @IBAction func didTapFavourite(_ sender: Any) {
    }
    
    func setUp(with cat: CatModel) {
        catName.text = cat.name
        catImage.kf.setImage(with: URL(string: cat.image?.url ?? ""))
        
    }
}
