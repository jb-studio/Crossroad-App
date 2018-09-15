//
//  SearchCellViewModel.swift
//  Crossroad
//
//  Created by Juri on 15/09/2018.
//  Copyright © 2018 Juri. All rights reserved.
//

import UIKit

struct SearchCellViewModel: SearchCellRepresentable {
    
    let profile: Profile
    
    var age: String {
        return profile.name
    }
    
    var country: String {
        return profile.country
    }
    
    var avatar: UIImage? {
        return profile.avatar
    }
    
    var name: String {
        return profile.name
    }
    
}
