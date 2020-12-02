//
//  ModalScreen.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import SwiftUI

struct ModalScreen: View {

    struct Defaults {
        static let showModalTitle = "Show Modal"
        static let greetings = "Hi!"
        static let greetingsDetail = "This is test modal screen!"
    }

    @State private var showingModal = false
    
    var body: some View {
        Button(action: {
            showingModal.toggle()
        }) {
            Text(Defaults.showModalTitle)
        }.sheet(isPresented: $showingModal) {
            ListDetailView(manufacturer: Defaults.greetings, description: Defaults.greetingsDetail, closeModal: $showingModal)
        }.buttonStyle(GradientButtonStyle())
    }
}
