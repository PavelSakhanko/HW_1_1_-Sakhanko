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
    @ObservedObject var listItemModel = ListItemModel {_ in }
    @Binding var willMoveToNextScreen: Bool
   
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            NavigationView {
                List(viewModel.cars, id: \.id) { car in
                    if willMoveToNextScreen {
                        navigateFromHome(car: car, viewModel: viewModel)
                    } else {
                        navigateFromList(car: car, viewModel: viewModel)
                    }
                }
                .navigationBarTitle(Defaults.listTitle)
            } //NavigationView
        }
    }
    
    func navigateFromHome(car: Car, viewModel: CarViewModel) -> some View {
        NavigationLink(destination: ListDetailView(car: car), isActive: $willMoveToNextScreen) {
            HStack {
                ListItem(txt: car.manufacturer, tag: car.id, selected: car.id)
            }.padding(10)
        }
    }
    
    func navigateFromList(car: Car, viewModel: CarViewModel) -> some View {
        NavigationLink(destination: ListDetailView(car: car), tag: car.id, selection: $listItemModel.selection) {
            ListItem(txt: car.manufacturer, tag: car.id, selected: car.id).padding(10)
        }
    }
}
