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
    @ObservedObject var model = Model {_ in }
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
        NavigationLink(destination: ListDetailView(viewModel: viewModel), isActive: $willMoveToNextScreen) {
            HStack {
                RowLabel(txt: car.manufacturer, tag: car.id, selected: car.id)
            }.padding(10)
        }
    }
    
    func navigateFromList(car: Car, viewModel: CarViewModel) -> some View {
        NavigationLink(destination: ListDetailView(viewModel: viewModel), tag: car.id, selection: $model.selection) {
            RowLabel(txt: car.manufacturer, tag: car.id, selected: model.selected).padding(10)
        }
    }
}

class Model: ObservableObject {
    @Published var selection: Int? {
        willSet {
            if let nv = newValue {
                selected = nv
                willChangeSelection?(selected)
                UserDefaults.standard.set(selected, forKey: "listItemNumber")
            }
        }
    }
    var selected: Int = 0
    let willChangeSelection: ((Int) -> Void)?
    init( onSelection: ((Int)->Void)? ) {
        willChangeSelection = onSelection
        selection = nil
    }
}

struct RowLabel: View {
    let txt: String
    let tag: Int
    let selected: Int
    var body: some View {
        Text(txt)
            .foregroundColor(.gray)
            .font(.headline)
    }
}
