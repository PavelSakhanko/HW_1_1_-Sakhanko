//
//  CarViewModel.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import Foundation

final class CarViewModel: ObservableObject {
    @Published private(set) var cars = [
        Car(id: 0, manufacturer: "Lexus",
            description: "Ah, Lexus, welcome back, your throne awaits. The premium Japanese car maker wins our Driver Power brand survey in 2020, and for the fourth year in a row."),
        Car(id: 1, manufacturer: "Subaru",
            description: "Subaru would be in with a chance of winning our Driver Power brand survey were in not for two key points."),
        Car(id: 2, manufacturer: "Skoda",
            description: "Our top-rated brand from within the Volkswagen Group, and a long-time favourite among Auto Express readers, Skoda does many, many things very, very well.")
    ]
}
