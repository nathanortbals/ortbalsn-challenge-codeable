//
//  ProductTableViewCell.swift
//  ortbalsn-challenge-codeable
//
//  Created by Nathan Ortbals on 4/26/19.
//  Copyright © 2019 nathanortbals. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setLabels(product: Product) {
        titleLabel.text = product.title
        categoryLabel.text = product.category
        priceLabel.text = String(format: "$%.02f", product.price)
        quantityLabel.text = String(product.stockedQuantity) + " in stock"
    }
}
