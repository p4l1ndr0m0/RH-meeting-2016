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
    @IBOutlet weak var c10: UIButton!
    @IBOutlet weak var c11: UIButton!
    @IBOutlet weak var c12: UIButton!
    @IBOutlet weak var c13: UIButton!
    @IBOutlet weak var c14: UIButton!
    @IBOutlet weak var c15: UIButton!
    
    var resp1 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta1") as Int!
    //print(resp2)
    var resp2 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta2") as Int!
    //print(resp2)
    var resp3 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta3") as Int!
    //print(resp3)
    var resp4 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta4") as Int!
    //print(resp4)
    var resp5 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta5") as Int!
    //print(resp5)
    var resp6 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta6") as Int!
    //print(resp6)
    var resp7 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta7") as Int!
    //print(resp7)
    var resp8 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta8") as Int!
    //print(resp8)
    var resp9 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta9") as Int!
    //print(resp9)
    var resp10 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta10") as Int!
    //print(resp9)
    var resp11 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta11") as Int!
    //print(resp9)
    var resp12 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta12") as Int!
    //print(resp9)
    var resp13 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta13") as Int!
    //print(resp9)
    var resp14 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta14") as Int!
    //print(resp9)
    var resp15 = NSUserDefaults.standardUserDefaults().integerForKey("respuesta15") as Int!
    //print(resp9)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondo_rally.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        
        

        
        
        if (resp1 == 1){
            print("maldita sea \(resp1)")
            c1.setImage(UIImage(named: "Trofeo_1_color.png"), forState: UIControlState.Normal)
            c1.enabled = false
        }
        if (resp2 == 1){
            c2.setImage(UIImage(named: "Trofeo_2_color.png"), forState: UIControlState.Normal)
            c2.enabled = false
        }
        if (resp3 == 1){
            c3.setImage(UIImage(named: "Trofeo_3_color.png"), forState: UIControlState.Normal)
            c3.enabled = false
        }
        if (resp4 == 1){
            c4.setImage(UIImage(named: "Trofeo_4_color"), forState: UIControlState.Normal)
            c4.enabled = false
         }
        if (resp5 == 1){
            c5.setImage(UIImage(named: "Trofeo_5_color.png"), forState: UIControlState.Normal)
         c5.enabled = false
        }
        if (resp6 == 1){
            c6.setImage(UIImage(named: "Trofeo_6_color.png"), forState: UIControlState.Normal)
            c6.enabled = false
        }
        if (resp7 == 1){
            c7.setImage(UIImage(named: "Trofeo_7_color.png"), forState: UIControlState.Normal)
            c7.enabled = false
        }
        if (resp8 == 1){
            c8.setImage(UIImage(named: "Trofeo_8_color.png"), forState: UIControlState.Normal)
            c8.enabled = false
        }
        if (resp9 == 1){
            c9.setImage(UIImage(named: "Trofeo_9_color.png"), forState: UIControlState.Normal)
            c9.enabled = false
        }
         if (resp10 == 1){
         c10.setImage(UIImage(named: "Trofeo_10_color.png"), forState: UIControlState.Normal)
         c10.enabled = false
         }
         if (resp11 == 1){
         c11.setImage(UIImage(named: "Trofeo_11_color.png"), forState: UIControlState.Normal)
         c11.enabled = false
         }
         if (resp12 == 1){
         c12.setImage(UIImage(named: "Trofeo_12_color.png"), forState: UIControlState.Normal)
         c12.enabled = false
         }
         if (resp13 == 1){
         c13.setImage(UIImage(named: "Trofeo_13_color.png"), forState: UIControlState.Normal)
         c13.enabled = false
         }
         if (resp14 == 1){
         c14.setImage(UIImage(named: "Trofeo_14_color.png"), forState: UIControlState.Normal)
         c14.enabled = false
         }
         if (resp15 == 1){
         c15.setImage(UIImage(named: "Trofeo_15_color.png"), forState: UIControlState.Normal)
         c15.enabled = false
         }
 
        
        

    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
