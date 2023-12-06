//
//  BreedListViewModel.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 15.11.2023.
//

import Foundation

class BreedListViewModel: ObservableObject {

    @Published var isLoading = true
    @Published var breedList: [String] = []
    private var dataSource = BreedDataSource()
    @Published var imagePresented = false

    func infoTapped() {
        imagePresented = true
    }

    init() {
        dataSource.delegate = self
    }

    func loadBreedlist() {
        dataSource.loadBreedList()
    }
}

extension BreedListViewModel: BreedDataSourceDelegate {

    func breedListLoaded(breedList: [String]) {
        isLoading = false
        self.breedList = breedList
    }
}
