//
//  TitleText.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 15.11.2023.
//

import SwiftUI

struct TitleText: View {

    private let text: String

    init(text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            .font(.title)
            .padding(.vertical, Spacing.padding_4)
            .padding(.horizontal, Spacing.padding_2)
    }
}

#Preview {
    TitleText(text: "Test")
}
