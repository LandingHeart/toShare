//
//  ViewController.swift
//  toShare
//
//  Created by Shinan Liu on 5/28/18.
//  Copyright © 2018 Shinan Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    
    let cImage = [UIImage(named:"men"),UIImage(named:"men"),UIImage(named:"men")]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        
        return 3
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!CollectionViewCell
       cell.imageView.image = cImage[indexPath.row]
        cell.layer.masksToBounds = true
     //   cell.layer.cornerRadius = 5
        cell.layer.borderWidth = 1
       
        
        
        return cell
        
    }
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var isMenueHidden = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      //  sideMenuConstraint.constant = -240
        // Do any additional setup after loading the view.
    }
    func viewControllerDisplay(){
        
        let width = (view.frame.size.width - 10) / 3
        let height = (view.frame.size.height - 300)
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width:width, height:height)
    }

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
