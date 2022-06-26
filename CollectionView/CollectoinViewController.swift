//
//  ViewController.swift
//  CollectionView
//
//  Created by MahyarShakouri on 2/21/22.
//

import UIKit

class CollectoinViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var countryNameLabel: UILabel!
    
    let dataSource: [String] = ["USA", "Netherlands", "Norway", "Sweden", "Iran"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            
            countryCell.configure(with: dataSource[indexPath.row])
            cell = countryCell
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Country: \(dataSource[indexPath.row])")
        countryNameLabel.text = "\(dataSource[indexPath.row])"
    }

}
