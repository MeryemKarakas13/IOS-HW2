//
//  Loading.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 15.11.2023.
//

import SwiftUI

struct Loading: View {

    var body: some View {
        VStack(spacing: Spacing.padding_1) {
            ProgressView()
            Text("Loading...")
        }
    }
}

#Preview {
    Loading()
}
