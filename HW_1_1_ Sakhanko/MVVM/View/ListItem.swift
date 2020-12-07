//
//  ListItem.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 7.12.20.
//

import SwiftUI

struct ListItem: View {
    let txt: String
    let tag: Int
    let selected: Int
    var body: some View {
        Text(txt)
            .foregroundColor(.gray)
            .font(.headline)
    }
}
