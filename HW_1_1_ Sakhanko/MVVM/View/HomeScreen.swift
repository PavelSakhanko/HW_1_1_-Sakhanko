//
//  HomeScreen.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import SwiftUI

struct HomeScreen: View {

    struct Defaults {
        static let buttonTitle = "Open List"
    }

    @Binding var tabSelection: Int
    @Binding var isDetailsOpen: Bool

    var body: some View {
        Button(action: {
            tabSelection = 2
            isDetailsOpen = true
        }) {
            Text(Defaults.buttonTitle)
        }.buttonStyle(GradientButtonStyle())
    }
}
