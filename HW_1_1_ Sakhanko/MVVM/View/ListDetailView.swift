//
//  ListDetailView.swift
//  HW_1_1_ Sakhanko
//
//  Created by Pavel Sakhanko on 1.12.20.
//

import SwiftUI

struct ListDetailView: View {
    
    let manufacturer: String
    let description: String

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text(manufacturer)
                .foregroundColor(.gray)
                .font(.system(size: 30))
            Text(description)
                .foregroundColor(.black)
                .font(.system(size: 20))
            Spacer()
        }
        .padding()
    }
}
