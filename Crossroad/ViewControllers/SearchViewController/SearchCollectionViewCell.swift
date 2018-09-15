//
//  SearchCollectionViewCell.swift
//  Crossroad
//
//  Created by Juri on 14/09/2018.
//  Copyright © 2018 Juri. All rights reserved.
//

import UIKit
import EasyPeasy

class SearchCollectionViewCell: UICollectionViewCell {
    
    let name: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let country: UILabel = {
        let label = UILabel()
        return label
    }()
    
    func configure(viewViewModel viewModel: SearchCellViewModel) {
        setupCellView()
        
        name.text = viewModel.name
        country.text = viewModel.country
    }
    
    fileprivate func setupCellView() {
        addSubview(name)
        addSubview(country)
        
        name.easy.layout(
            Top(10),
            Left(10)
        )
        
        country.easy.layout(
            Top(10).to(name, .bottom),
            Left(10)
        )
    }
    
}
