//
//  CollectionViewCell.swift
//  CollectionView
//
//  Created by MahyarShakouri on 2/21/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var countryLabel: UILabel!
    
    func configure(with countryName: String){
        countryLabel.text = countryName
    }
}

