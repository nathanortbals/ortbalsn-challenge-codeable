//
//  ViewController.swift
//  ortbalsn-challenge-codeable
//
//  Created by Nathan Ortbals on 4/26/19.
//  Copyright © 2019 nathanortbals. All rights reserved.
//

import UIKit

class ProductsViewController: UITableViewController {
    
    let decoder: JSONDecoder = JSONDecoder()
    var products: [Product] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadProducts()
        tableView.reloadData()
    }
        
    func loadProducts() {
        if let path = Bundle.main.path(forResource: "inventory", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let inventory = try decoder.decode(Inventory.self, from: data)
                products = inventory.products
            } catch {
                print("Could not decode inventory file")
            }
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        
        if let cell = cell as? ProductTableViewCell {
            let product = products[indexPath.row]
            cell.setLabels(product: product)
        }
        
        return cell
    }
}

