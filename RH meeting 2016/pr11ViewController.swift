//
//  pr11ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/17/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class pr11ViewController: UIViewController {
    
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
        
        pregunta.text = "Jose manuel se duerme en junta?"
        respA.setTitle("no", forState: UIControlState.Normal)
        respB.setTitle("si", forState: UIControlState.Normal)
        respC.setTitle("a veces", forState: UIControlState.Normal)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func ansA(sender: AnyObject) {
        let alertController = UIAlertController(title: "Error", message: "Suerte para la Proxima", preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
            print("boton apretado para cancelacion");
        }
        alertController.addAction(cancelAction)
        self.presentViewController(alertController, animated: true, completion:nil)
    }
    
    
    @IBAction func ansC(sender: AnyObject) {
        let alertController = UIAlertController(title: "Error", message: "Suerte para la Proxima", preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
            print("boton apretado para cancelacion");
        }
        alertController.addAction(cancelAction)
        self.presentViewController(alertController, animated: true, completion:nil)
    }
    


}
