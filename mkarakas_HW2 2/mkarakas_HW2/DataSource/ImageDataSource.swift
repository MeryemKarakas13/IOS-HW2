//
//  ImageDataSource.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 16.11.2023.
//

import Foundation

struct ImageDataSource {
    private let baseURL = "https://dog.ceo/api"
    var delegate: ImageDataSourceDelegate?

    func loadImage(breed: String) {
        let endpoint = "\(baseURL)/breed/\(breed)/images/random"
        guard let url = URL(string: endpoint) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared

        let dataTask = session.dataTask(with: request) { data, _, _ in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            do {
                let image = try decoder.decode(ImageResponse.self, from: data)
                let imageURL = image.message
                print("Image URL: \(imageURL)")
                DispatchQueue.main.async {
                    delegate?.imageLoaded(imageURL: imageURL)
                }
            } catch {
                print(error)
            }
        }

        dataTask.resume()
    }
}
