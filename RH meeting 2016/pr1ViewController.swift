//
//  pr1ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/15/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit
import Foundation

class pr1ViewController: UIViewController, Modelpr1Protocal {
    
    
    @IBOutlet weak var pregunta: UILabel!
    @IBOutlet weak var respA: UIButton!
    @IBOutlet weak var respB: UIButton!
    @IBOutlet weak var respC: UIButton!
    var selectedLocation : locationpr1!
    var feedItems: NSArray = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeModel = Modelpr1()
        homeModel.delegate = self
        homeModel.downloadItems()
    
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondo_preguntas.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        pregunta.text = self.selectedLocation?.pregunta
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func itemsDownloaded(items: NSArray) {
        
        feedItems = items
        print(feedItems)
        
    }

}
