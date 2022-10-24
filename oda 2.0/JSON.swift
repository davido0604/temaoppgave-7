// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let products = try? newJSONDecoder().decode(Products.self, from: jsonData)

import Foundation
import SwiftUI

struct Products: Hashable, Codable {
    let items: [Item]
    
    enum CodingKeys: String, CodingKey {
            case items
            //case extraLines = "extra_lines"
        }
}

struct Item: Hashable, Codable {
    let product: Product?
    let quantity: Int?
    //let availability: Availability
    let displayPriceTotal, discountedDisplayPriceTotal: String?
    
    enum CodingKeys: String, CodingKey {
            case product, quantity, availability
            case displayPriceTotal = "display_price_total"
            case discountedDisplayPriceTotal = "discounted_display_price_total"
        }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(product, forKey: .product)
        try container.encode(quantity, forKey: .quantity)
        try container.encode(displayPriceTotal, forKey: .displayPriceTotal)
        try container.encode(discountedDisplayPriceTotal, forKey: .discountedDisplayPriceTotal)
    }
    
    /*
    extension Item: Decodable {
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            let productvalues;.decode(Product?.self, forKey: .product)
        }
    }
     
    */
}

struct Product: Hashable, Codable {
    let id: Int
    let name: String
    let brand: String?
    let images: [Image]
    let brandID: Int?
    //let discount: Discount?
    let frontURL: String
    let fullName: String
    //let promotion: Promotion?
    let nameExtra, grossPrice: String
    //let availability: Availability
    let grossUnitPrice: String
    //let clientClassifiers: [ClientClassifier]
    let unitPriceQuantityName, unitPriceQuantityAbbreviation: String
}
