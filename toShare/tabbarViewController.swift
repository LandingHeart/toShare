//
//  tabbarViewController.swift
//  toShare
//
//  Created by Shinan Liu on 5/28/18.
//  Copyright © 2018 Shinan Liu. All rights reserved.
//

import UIKit

class tabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        viewWillLayoutSubviews()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//
//        tabBar.frame = CGRect(x: 0, y: 60, width: tabBar.frame.size.width, height: tabBar.frame.size.height)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
