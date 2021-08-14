//
//  ProductService.swift
//  JsonToList
//
//  Created by Abdurrahman Ali on 8/10/21.
//

import Foundation
import  UIKit

public class ProductService {
    private let productListUrl = URL(string: "https://api/products.json")!
    
    func getProducts(withCompletion completion: @escaping (ProductsContainer?) -> ())  {
        URLSession.shared.dataTask(with: productListUrl) { (data, response, error) in
            if let error = error {
                completion(nil)
                print(error.localizedDescription)
            } else if let data = data, let products = try? JSONDecoder().decode(ProductsContainer.self, from: data) {
                completion(products)
            } else {
                completion(nil)
            }
        }.resume()
    }
}
