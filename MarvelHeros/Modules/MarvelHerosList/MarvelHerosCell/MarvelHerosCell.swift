//
//  MarvelHerosCell.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import UIKit

class MarvelHerosCell: UITableViewCell {

    @IBOutlet weak var marvelHerosTitleLabel: UILabel!
    @IBOutlet weak var marvelHerosImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
