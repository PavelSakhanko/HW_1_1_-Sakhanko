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
    @AppStorage("listItemNumber") var listItemNumber: Int = 0

    var body: some View {
        
        HStack {
            ForEach(0...2, id: \.self) { buttonId in
                Button(action: {
                    tabSelection = 2
                    openDetails = true
                    listItemNumber = buttonId
                }) {
                    Text("Open \(buttonId) item!")
                }.tag(buttonId)
                .buttonStyle(GradientButtonStyle())
            }
        }
    }
}
