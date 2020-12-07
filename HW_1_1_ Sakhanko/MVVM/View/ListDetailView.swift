//
//  ListDetailView.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import SwiftUI

struct ListDetailView: View {
    let car: Car

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text(car.manufacturer)
            Text(car.description)
            Spacer()
        }
        .padding()
    }
}
