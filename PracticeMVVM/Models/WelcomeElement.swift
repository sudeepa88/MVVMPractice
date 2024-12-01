//
//  WelcomeElement.swift
//  PracticeMVVM
//
//  Created by Sudeepa Pal on 02/12/24.
//

import Foundation




// MARK: - WelcomeElement
struct WelcomeElement: Codable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: Category
    let image: String
    let rating: Rating
}

enum Category: String, Codable {
    case electronics = "electronics"
    case jewelery = "jewelery"
    case menSClothing = "men's clothing"
    case womenSClothing = "women's clothing"
}

// MARK: - Rating
struct Rating: Codable {
    let rate: Double
    let count: Int
}

typealias Welcome = [WelcomeElement]
