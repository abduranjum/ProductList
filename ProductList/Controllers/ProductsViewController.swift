//
//  ViewController.swift
//  JsonToList
//
//  Created by Abdurrahman Ali on 8/13/21.
//

import UIKit

class ProductsViewController: UITableViewController {
    
    private var productsContainer: ProductsContainer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        ProductService().getProducts { (productsContainer) in
            self.productsContainer = productsContainer
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsContainer?.products.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as? ProductTableViewCell
        else {
            fatalError("ProductTableViewCell could not be found.")
        }
        
        let product = productsContainer?.products[indexPath.row]
        
        cell.nameLabel.text = product?.name
        cell.idLabel.text = String(product?.id ?? 0)
        cell.taglineLabel.text = product?.tagline
        cell.ratingLabel.text = String(product?.rating ?? 0)
        cell.dateLabel.text = product?.date

        return cell
    }

}

