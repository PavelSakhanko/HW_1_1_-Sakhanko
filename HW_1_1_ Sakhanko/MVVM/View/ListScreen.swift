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
    @Binding var isDetailsOpen: Bool

    var body: some View {
        NavigationView {
            List(viewModel.cars) { car in
                ListCarItem(manufacturer: car.manufacturer, description: car.description)
                .sheet(isPresented: $isDetailsOpen) {
                    ListDetailView(manufacturer: car.manufacturer, description: car.description)
                }
          }
            .navigationBarTitle(Defaults.listTitle)
        } //NavigationView
    }
}

struct ListCarItem: View {
    
    let manufacturer: String
    let description: String
    @State private var showingModal = false
    
    var body: some View {
        NavigationLink(destination: ListDetailView(manufacturer: manufacturer, description: description)) {
            HStack {
                Text(manufacturer)
                .foregroundColor(.gray)
                .font(.headline)
            }.padding(10)
        }
    }
}
