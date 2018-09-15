//
//  SearchCellRepresentable.swift
//  Crossroad
//
//  Created by Juri on 15/09/2018.
//  Copyright © 2018 Juri. All rights reserved.
//

import UIKit

protocol SearchCellRepresentable {
    
    var name: String { get }
    var age: String { get }
    var country: String { get }
    var avatar: UIImage? { get }
    
}
