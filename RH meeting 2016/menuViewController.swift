//
//  menuViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 7/25/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit
import Foundation

class menuViewController: UIViewController {
    
    var resultado: String!
    
    var selectedLocation : LocationMenu = LocationMenu()
    @IBOutlet weak var equipoText: UILabel!
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        equipoText.text = self.selectedLocation.equipo
        
        
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

}
