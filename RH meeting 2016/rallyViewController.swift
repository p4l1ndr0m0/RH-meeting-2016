//
//  rallyViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates on 7/28/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class rallyViewController: UIViewController {
    
    
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    @IBOutlet weak var c4: UIButton!
    @IBOutlet weak var c5: UIButton!
    @IBOutlet weak var c6: UIButton!
    @IBOutlet weak var c7: UIButton!
    @IBOutlet weak var c8: UIButton!
    @IBOutlet weak var c9: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondo_rally.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        
        
        let resp1 = NSUserDefaults.standardUserDefaults().stringForKey("respuesta1") as String!
        //print(resp1)
        let resp2 = NSUserDefaults.standardUserDefaults().stringForKey("respuesta2") as String!
        //print(resp2)
        let resp3 = NSUserDefaults.standardUserDefaults().stringForKey("respuesta3") as String!
        //print(resp3)
        let resp4 = NSUserDefaults.standardUserDefaults().stringForKey("respuesta4") as String!
        //print(resp4)
        let resp5 = NSUserDefaults.standardUserDefaults().stringForKey("respuesta5") as String!
        //print(resp5)
        let resp6 = NSUserDefaults.standardUserDefaults().stringForKey("respuesta6") as String!
        //print(resp6)
        let resp7 = NSUserDefaults.standardUserDefaults().stringForKey("respuesta7") as String!
        //print(resp7)
        let resp8 = NSUserDefaults.standardUserDefaults().stringForKey("respuesta8") as String!
        //print(resp8)
        let resp9 = NSUserDefaults.standardUserDefaults().stringForKey("respuesta9") as String!
        //print(resp9)
        
        if (resp1 == "si"){
            c1.setImage(UIImage(named: "boton_d1.png"), forState: UIControlState.Normal)
        }
        if (resp2 == "si"){
            c1.setImage(UIImage(named: "boton_d2.png"), forState: UIControlState.Normal)
        }
        if (resp3 == "si"){
            c1.setImage(UIImage(named: "boton_d3.png"), forState: UIControlState.Normal)
        }
        if (resp4 == "si"){
            c1.setImage(UIImage(named: "boton_d4.png"), forState: UIControlState.Normal)
        }
        if (resp5 == "si"){
            c1.setImage(UIImage(named: "boton_d5.png"), forState: UIControlState.Normal)
        }
        if (resp6 == "si"){
            c1.setImage(UIImage(named: "boton_d6.png"), forState: UIControlState.Normal)
        }
        if (resp7 == "si"){
            c1.setImage(UIImage(named: "boton_d7.png"), forState: UIControlState.Normal)
        }
        if (resp8 == "si"){
            c1.setImage(UIImage(named: "boton_d8.png"), forState: UIControlState.Normal)
        }
        if (resp9 == "si"){
            c1.setImage(UIImage(named: "boton_d9.png"), forState: UIControlState.Normal)
        }

    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
