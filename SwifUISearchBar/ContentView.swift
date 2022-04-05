//
//  ContentView.swift
//  SwifUISearchBar
//
//  Created by 강관구 on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var searchBar: SearchBar = SearchBar()
    @ObservedObject var viewModel: ViewModel
    
    @State var searchText = ""
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(
                    viewModel.planets.filter {
                        searchBar.text.isEmpty ||
                        $0.localizedStandardContains(searchBar.text)
                    },
                    id: \.self
                ) { eachPlanet in
                    Text(eachPlanet)
                }
                
            }
            // 15.0 이후는 searchable로 대체
//            .searchable(text: $searchText)
            .navigationBarTitle("testList", displayMode: .inline)
            .add(self.searchBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
