//
//  Car.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import Foundation

struct Car: Identifiable, Hashable, Codable {
    let id: Int
    let manufacturer: String
    let description: String
}
