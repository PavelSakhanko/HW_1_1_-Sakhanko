//
//  ListItemModel.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 7.12.20.
//

import Foundation

class ListItemModel: ObservableObject {
    @Published var selection: Int? {
        willSet {
            if let nv = newValue {
                selected = nv
                willChangeSelection?(selected)
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
