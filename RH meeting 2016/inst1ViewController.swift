//
//  inst1ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/19/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class inst1ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondoApp.jpg")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
    }

}
