//
//  BreedListRow.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 15.11.2023.
//

import SwiftUI

struct BreedListRow: View {

    private let breed: String

    init(breed: String) {
        self.breed = breed
    }

    var body: some View {
        HStack(spacing: .zero) {
            Text(breed)
            Spacer()
        }
    }
}

#Preview {
    BreedListRow(breed: String("test"))
}
