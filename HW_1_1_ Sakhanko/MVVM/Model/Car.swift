//
//  Car.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import Foundation

struct Car: Identifiable {
    let id = UUID().uuidString
    let manufacturer: String
    let description: String
}
