//
//  pr1ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/15/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class pr1ViewController: UIViewController {
    
    
    @IBOutlet weak var pregunta: UILabel!
    @IBOutlet weak var respA: UIButton!
    @IBOutlet weak var respB: UIButton!
    @IBOutlet weak var respC: UIButton!
    var resultado: String!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondo_preguntas.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        
        
    }
    






    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }



}
