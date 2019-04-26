//
//  Product.swift
//  ortbalsn-challenge-codeable
//
//  Created by Nathan Ortbals on 4/26/19.
//  Copyright © 2019 nathanortbals. All rights reserved.
//

import Foundation

struct Product: Codable {
    let id: Int
    let category: String
    let title: String
    let price: Double
    let stockedQuantity: Int
}
