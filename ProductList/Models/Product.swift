//
//  Product.swift
//  JsonToList
//
//  Created by Abdurrahman Ali on 8/13/21.
//

import Foundation

struct Product: Decodable {
    var name: String
    var id: Int
    var tagline: String
    var rating: Int
    var date: String
}
