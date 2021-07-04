//
//  AllCatsTableViewCell.swift
//  petDirectory
//
//  Created by apple on 02/07/2021.
//
import Kingfisher
import UIKit
import SweetLike

class AllCatsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catName: UILabel!
    
    
    @IBAction func didTapFavourite(_ sender: Any) {
    }
    
    private let button: SweetLike = SweetLike(frame: CGRect(x: (UIScreen.main.bounds.width / 2) + 175, y: 25, width: 17.68, height: 15.67))
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.addSubview(button)
    }
    
    func setUp(with cat: CatModel) {
        catName.text = cat.name
        catImage.kf.setImage(with: URL(string: cat.image?.url ?? ""))
        
    }
}
