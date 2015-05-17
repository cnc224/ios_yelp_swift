//
//  BusinessCell.swift
//  Yelp
//
//  Created by Chen NC on 5/16/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    @IBOutlet weak var thumbImageView: UIImageView!

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbImageView.layer.cornerRadius = 5
        thumbImageView.clipsToBounds = true
    }

    var business: Business! {
        didSet {
            nameLabel.text = business.name
            distanceLabel.text = business.distance
            categoryLabel.text = business.categories
            addressLabel.text = business.address
            thumbImageView.setImageWithURL(business.imageURL)
            reviewsCountLabel.text = "\(business.reviewCount)"
            ratingImageView.setImageWithURL(business.ratingImageURL)
            
            //priceLabel.text = business.
        }
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
