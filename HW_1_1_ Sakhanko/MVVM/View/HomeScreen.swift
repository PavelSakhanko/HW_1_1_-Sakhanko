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

    var body: some View {
        Button(action: {
            tabSelection = 2
        }) {
            Text(Defaults.buttonTitle)
        }.buttonStyle(GradientButtonStyle())
    }
}
