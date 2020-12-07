//
//  HomeScreen.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import SwiftUI

struct HomeScreen: View {

    @Binding var tabSelection: Int
    @Binding var openDetails: Bool

    var body: some View {
        HStack {
            Button(action: {
                tabSelection = 2
                openDetails = true
            }) {
                Text("Open list item!")
            }
            .buttonStyle(GradientButtonStyle())
        }
    }
}
