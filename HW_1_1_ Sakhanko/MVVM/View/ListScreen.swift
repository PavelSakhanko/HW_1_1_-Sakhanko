//
//  ListScreen.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import SwiftUI

struct ListScreen: View {
    
    struct Defaults {
        static let listTitle = "Cars"
    }

    @ObservedObject var viewModel: CarViewModel

    var body: some View {
        NavigationView {
            List(viewModel.cars) { car in
                NavigationLink(destination: ListDetailView(manufacturer: car.manufacturer, description: car.description)) {
                    HStack {
                      Text(car.manufacturer)
                        .foregroundColor(.gray)
                        .font(.headline)
                    }.padding(10)
                }
          }
            .navigationBarTitle(Defaults.listTitle)
        } //NavigationView
    }
}
