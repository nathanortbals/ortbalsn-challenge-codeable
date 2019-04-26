//
//  Inventory.swift
//  ortbalsn-challenge-codeable
//
//  Created by Nathan Ortbals on 4/26/19.
//  Copyright © 2019 nathanortbals. All rights reserved.
//

import Foundation

struct Inventory: Codable {
    let status: String
    let products: [Product]
}
