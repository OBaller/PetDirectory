//
//  AllCatsTableViewCell.swift
//  petDirectory
//
//  Created by apple on 02/07/2021.
//
import Kingfisher
import UIKit

class AllCatsTableViewCell: UITableViewCell {
    static let identifier = "AllCatsTableViewCell"
    
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catName: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    var favouriteButton: (() -> Void)?
    
    
    @IBAction func didTapFavourite(_ sender: UIButton) {
        favouriteButton?()
    }
    
    static func Nib() -> UINib {
        return UINib(nibName: "AllCatsTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.favouriteButton.addTarget(self, action: #selector(didTapFavourite(_:)), for: .touchUpInside)
    }
    
    func setUp(with cat: CatModel) {
        catName.text = cat.name
        catImage.kf.setImage(with: URL(string: cat.image?.url ?? ""))
        
    }
}
