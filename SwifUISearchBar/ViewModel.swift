//
//  ViewModel.swift
//  SwifUISearchBar
//
//  Created by 강관구 on 2022/04/05.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Ceres", "Pluto", "Haumea", "Makemake", "Eris"]
}
