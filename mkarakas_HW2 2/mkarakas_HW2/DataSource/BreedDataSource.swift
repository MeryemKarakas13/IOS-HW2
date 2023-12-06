//
//  BreedDataSource.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 15.11.2023.
//

import Foundation

struct BreedDataSource {

    private let baseURL = "https://dog.ceo/api"
    var delegate: BreedDataSourceDelegate?

    func loadBreedList() {

        let session = URLSession.shared

        guard let url = URL(string: "\(baseURL)/breeds/list") else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let dataTask = session.dataTask(with: request) { data, _, _ in
            guard let data else { return }
            let decoder = JSONDecoder()
            do {
                let breedList = try decoder.decode(DogBreedResponse.self, from: data)
                let breeds = breedList.message
                DispatchQueue.main.async {
                    delegate?.breedListLoaded(breedList: breeds)
                }
            } catch {
                print(error)
            }
        }
        dataTask.resume()
    }
}
