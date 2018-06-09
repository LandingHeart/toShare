//
//  ViewController.swift
//  toShare
//
//  Created by Shinan Liu on 5/28/18.
//  Copyright © 2018 Shinan Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate, UISearchControllerDelegate{
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
  
    let imageArray:[String] = ["men", "shirts", "formal"]
    var searchController: UISearchController!
    var resultController = UICollectionViewController()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        
        return imageArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = UIImage(named: imageArray[indexPath.row] + ".jpg" )
        
        //cell border and collor
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = UIColor.gray.cgColor
//        let width = (view.frame.size.width / 2) - 10
//        let height = (view.frame.size.height / 2) + 20
//        
//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        layout.itemSize = CGSize(width: width, height: height)
//        
//       
//        
        
//        //image gesture recognization
//        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tappedMe))
//        cell.imageView.addGestureRecognizer(tap)
//        cell.imageView.isUserInteractionEnabled = true
        return cell
        
    }
 
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as? detailViewController
        viewController?.name = imageArray[indexPath.row]
        self.navigationController?.pushViewController(viewController!, animated: true)
        
    }
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var isMenueHidden = true
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        

   }
//    @objc func tappedMe(){
//        print("tapped me" )
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
////        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "sectionHeader", for: indexPath) as! sectionHeaderCollectionReusableView
////
////        header.headerLabel.text = "YOUR_HEADER_TEXT"
//
//        return header
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func barButton(_ sender: Any) {
        if isMenueHidden {
           sideMenuConstraint.constant = 0
            UIView.animate(withDuration: 0.1, animations:{
                self.view.layoutIfNeeded()
                })
        }
        else {
            sideMenuConstraint.constant = -240
            UIView.animate(withDuration: 0.1, animations:{
                self.view.layoutIfNeeded()
            })
            
        }
            isMenueHidden = !isMenueHidden
        
    }
    
        
    
}
