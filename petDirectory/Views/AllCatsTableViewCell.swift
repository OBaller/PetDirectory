//
//  AllCatsTableViewCell.swift
//  petDirectory
//
//  Created by apple on 02/07/2021.
//
import Kingfisher
import UIKit

protocol AllCatsTableViewCellDelegate: AnyObject {
    func didTapFavButton (save name: String, and image: UIImage)
    func didUntapFavButton (remove name: String, and image: UIImage)
}
class AllCatsTableViewCell: UITableViewCell {
    
    weak var delegate: AllCatsTableViewCellDelegate?
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catName: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    
    @IBAction func didTapFavourite(_ sender: UIButton) {
        let redColor = UIColor(red: 222/255, green: 2/255, blue: 2/255, alpha: 1)
        let greyColor = UIColor(red: 33/255, green: 34/255, blue: 39/255, alpha: 1)
        sender.tintColor = sender.tintColor == redColor ? greyColor : redColor
        let favDogImg = UIImage(systemName: "suit.heart.fill")
        let dogImg = UIImage(systemName: "heart")
        if sender.tintColor == redColor {
            likeButton.setImage(favDogImg, for: .normal)
            
            delegate?.didTapFavButton(save: catName.text ?? "", and: catImage.image!)
            print("Favourite dog selected")
        } else {
            likeButton.setImage(dogImg, for: .normal)
            print("Favourite dog removed")
        }
 
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setUp(with cat: CatModel) {
        catName.text = cat.name
        catImage.kf.setImage(with: URL(string: cat.image?.url ?? ""))
        
    }
}
