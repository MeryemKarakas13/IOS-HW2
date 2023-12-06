//
//  ImageViewModel.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 16.11.2023.
//

import Foundation

class ImageViewModel: ObservableObject {
    @Published var isLoading = true
    @Published var imageURL: String = ""
    private var dataSource = ImageDataSource()

    init() {
        dataSource.delegate = self
    }

    func loadImage(breed: String) {
        isLoading = true
        dataSource.loadImage(breed: breed)
    }
}

extension ImageViewModel: ImageDataSourceDelegate {
    func imageLoaded(imageURL: String) {
        isLoading = false
        self.imageURL = imageURL
    }
}
