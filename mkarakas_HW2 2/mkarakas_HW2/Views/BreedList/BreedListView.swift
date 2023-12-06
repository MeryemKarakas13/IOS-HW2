//
//  BreedListView.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 15.11.2023.
//

import SwiftUI

struct BreedListView: View {

    @StateObject private var viewModel = BreedListViewModel()
    @State private var selectedBreed: String?

    var body: some View {
        NavigationStack {
            VStack(spacing: .zero) {
                if viewModel.isLoading {
                    Loading()
                        .onAppear {
                            viewModel.loadBreedlist()
                        }
                } else {
                    List(viewModel.breedList, id: \.self) { breed in
                                            BreedListRow(breed: breed)
                                                .onTapGesture {
                                                    selectedBreed = breed
                                                    viewModel.infoTapped()
                                                }
                                        }
                }
            }
            .navigationTitle("Breed List")
            .navigationBarTitleDisplayMode(.automatic)
            .sheet(isPresented: $viewModel.imagePresented) {
                            if let selectedBreed = selectedBreed {
                                ImageView(breed: selectedBreed)
                            }
                        }
        }

    }
}

#Preview {
    BreedListView()
}
