//
//  SearchViewViewModel.swift
//  Crossroad
//
//  Created by Juri on 14/09/2018.
//  Copyright © 2018 Juri. All rights reserved.
//

import Foundation

struct SearchViewViewModel {
    
    let profilesList: [Profile]
    
    var numberOfProfiles: Int {
        return profilesList.count
    }
    
    func viewModel(for index: Int) -> SearchCellViewModel {
        return SearchCellViewModel(profile: profilesList[index])
    }
    
}
