//
//  SearchViewController.swift
//  Crossroad
//
//  Created by Juri on 14/09/2018.
//  Copyright © 2018 Juri. All rights reserved.
//

import UIKit

class SearchViewControllers: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let searchCellId = "searchCellId"
    var viewModel: SearchViewViewModel!
    
    override func viewDidLoad() {
        
        let profiles = [
            Profile(name: "Nick", age: "13", country: "Ukrain", avatar: nil),
            Profile(name: "Sarah", age: "23", country: "Russia", avatar: nil),
            Profile(name: "Poul", age: "43", country: "Russia", avatar: nil),
            Profile(name: "Adam", age: "23", country: "United Kingdom", avatar: nil),
            Profile(name: "Michael", age: "53", country: "Russia", avatar: nil),
            Profile(name: "Luck", age: "20", country: "Russia", avatar: nil)
        ]
        
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: searchCellId)
        
        viewModel = SearchViewViewModel(profilesList: profiles)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if viewModel.numberOfProfiles > 0 {
            return viewModel.numberOfProfiles
        }
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: searchCellId, for: indexPath) as! SearchCollectionViewCell
        
        cell.configure(viewViewModel: viewModel.viewModel(for: indexPath.row) )
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.red
        } else {
            cell.backgroundColor = UIColor.cyan
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width / 2, height: 200)
    }
    
}
