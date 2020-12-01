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

    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection,
                content:  {
                    HomeScreen().tabItem {
                        Image(systemName: "house")
                        Text(Defaults.homeTabTitle)
                    }.tag(1)
                    ListScreen().tabItem {
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

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
