//
//  graciasViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 7/25/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class graciasViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "FondoApp.jpg")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
    }

}
