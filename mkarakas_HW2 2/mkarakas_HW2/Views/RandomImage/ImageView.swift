//
//  ImageView.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 16.11.2023.
//

import SwiftUI

struct ImageView: View {

    @StateObject private var viewModel = ImageViewModel()
    let breed: String
    var body: some View {
        VStack {
            if viewModel.isLoading {
                Loading()
                    .onAppear {
                        viewModel.loadImage(breed: breed)
                    }
            } else {
                AsyncImage(url: URL(string: viewModel.imageURL)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                    case .failure:
                        Image(systemName: "exclamationmark.triangle")
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(maxHeight: 200)
            }
        }
    }
}

#Preview {
    ImageView(breed: "pekinese")
}
