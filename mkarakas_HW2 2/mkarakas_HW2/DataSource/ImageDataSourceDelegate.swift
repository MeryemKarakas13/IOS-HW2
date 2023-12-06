//
//  ImageDataSourceDelegate.swift
//  mkarakas_HW2
//
//  Created by Meryem Karakaş on 16.11.2023.
//

import Foundation

protocol ImageDataSourceDelegate: AnyObject {
    func imageLoaded(imageURL: String)
}
