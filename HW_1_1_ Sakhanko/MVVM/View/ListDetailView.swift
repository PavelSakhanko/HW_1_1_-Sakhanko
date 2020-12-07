//
//  ListDetailView.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import SwiftUI

struct ListDetailView: View {
    @ObservedObject var viewModel: CarViewModel
    @AppStorage("listItemNumber") var listItemNumber: Int = 0

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            showCarManufacturer()
            showCarDescription()
            Spacer()
        }
        .padding()
    }
    
    func showCarManufacturer() -> some View {
        var text = Text("")
        for (index, car) in viewModel.cars.enumerated() {
            if index == listItemNumber {
                text = Text(car.manufacturer)
            }
        }
        return text
    }
    
    func showCarDescription() -> some View {
        var text = Text("")
        for (index, car) in viewModel.cars.enumerated() {
            if index == listItemNumber {
                text = Text(car.description)
            }
        }

        return text
    }
}
