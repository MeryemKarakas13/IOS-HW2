//
//  LinkText.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 15.11.2023.
//

import SwiftUI

struct LinkText: View {

    private let text: String

    init(text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
            .foregroundStyle(.linkText)
    }
}

#Preview {
    LinkText(text: "Test")
}
