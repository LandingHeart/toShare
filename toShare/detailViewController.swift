//
//  detailViewController.swift
//  toShare
//
//  Created by Shinan Liu on 6/7/18.
//  Copyright © 2018 Shinan Liu. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
       // print(name)
        img.image = UIImage(named: name)
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
