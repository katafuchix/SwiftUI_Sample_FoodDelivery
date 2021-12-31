//
//  Food.swift
//  SwiftUI_Sample_FoodDelivery
//
//  Created by cano on 2022/01/01.
//

import Foundation


class Food: Identifiable {

    let title: String
    let price: Double
    let category: Categories
    let id: Int

    init(title: String, price: Double, category: Categories, id: Int) {
        self.title = title
        self.price = price
        self.category = category
        self.id = id
    }
}
