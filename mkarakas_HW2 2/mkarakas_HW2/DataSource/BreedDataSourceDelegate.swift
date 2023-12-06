//
//  BreedDataSourceDelegate.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 15.11.2023.
//

import Foundation

protocol BreedDataSourceDelegate: AnyObject {
    func breedListLoaded(breedList: [String])
}
