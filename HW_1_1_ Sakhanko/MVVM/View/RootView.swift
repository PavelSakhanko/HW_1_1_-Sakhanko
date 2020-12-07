//
//  RootView.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import SwiftUI

struct RootView: View {

    struct Defaults {
        static let homeTabTitle =  "Home"
        static let listTabTitle =  "List"
        static let modalTabTitle = "Modal"
    }

    @State private var selectedItem = 1
    @State private var openDetails = false

    var body: some View {
        TabView(selection: $selectedItem,
                content:  {
                    HomeScreen(tabSelection: $selectedItem, openDetails: $openDetails).tabItem {
                        Image(systemName: "house")
                        Text(Defaults.homeTabTitle)
                    }.tag(1)
                    ListScreen(viewModel: CarViewModel(), willMoveToNextScreen: $openDetails).tabItem {
                        Image(systemName: "list.bullet")
                        Text(Defaults.listTabTitle)
                    }.tag(2)
                    ModalScreen().tabItem {
                        Image(systemName: "calendar.badge.plus")
                        Text(Defaults.modalTabTitle)
                    }.tag(3)
                })
    }
}
