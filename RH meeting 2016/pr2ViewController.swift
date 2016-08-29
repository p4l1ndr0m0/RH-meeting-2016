//
//  pr2ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/15/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class pr2ViewController: UIViewController {
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
        
        
        let request = NSMutableURLRequest(URL: NSURL(string: "http://app-pepsico.palindromo.com.mx/APP/pregunta2.php")!)
        request.HTTPMethod = "POST"
        //let postString = "correo=\(correoData.text!)&passw=\(passData.text!)"
        
        //request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
            data, response, error in
            
            if error != nil {
                print("error\(error)")
                return
            }
            print("response = \(response)")
            
            let resultValue:String = NSString(data: data!, encoding: NSUTF8StringEncoding) as String!;
            print("pregunta: \(resultValue)")
            //print("responseString = \(resultValue)")
            self.resultado = resultValue
            
            self.resultado = self.resultado.stringByReplacingOccurrencesOfString("\"", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            /*NSUserDefaults.standardUserDefaults().setObject(user_Correo, forKey:"isUserLoggedIn")
             NSUserDefaults.standardUserDefaults().setObject(self.resultado, forKey: "UserCorreo")
             NSUserDefaults.standardUserDefaults().synchronize()*/
            
            print("carajo\(self.resultado)")
            /*let d1 = NSUserDefaults.standardUserDefaults().stringForKey("isUserLoggedIn") as String!
             let d2 = NSUserDefaults.standardUserDefaults().stringForKey("UserCorreo") as String!
             
             print(d1)
             print(d2)*/
            
            let fullIndex = self.resultado.componentsSeparatedByString(",")
            print(fullIndex)
            var d1: String = fullIndex[0]
            print(d1)
            var d2: String = fullIndex[1]
            print(d2)
            var d3: String = fullIndex[2]
            print(d3)
            var d4: String = fullIndex[3]
            print(d4)
            var d5: String = fullIndex[4]
            print(d5)
            var preg = d2.componentsSeparatedByString("pregunta:")
            print(preg)
            var resp1 = d3.componentsSeparatedByString("r1:")
            print(resp1)
            var resp2 = d4.componentsSeparatedByString("r2:")
            print(resp2)
            var resp3 = d5.componentsSeparatedByString("r3:")
            print(resp3)
            var t2: String = preg[1]
            print(t2)
            var m2: String = resp1[1]
            print(m2)
            var m3: String = resp2[1]
            print(m3)
            var m4: String = resp3[1]
            print(m4)
            
            NSUserDefaults.standardUserDefaults().setObject(t2, forKey:"preg1")
             NSUserDefaults.standardUserDefaults().setObject(m2, forKey:"preg2")
             NSUserDefaults.standardUserDefaults().setObject(m3, forKey:"preg3")
             NSUserDefaults.standardUserDefaults().setObject(m4, forKey:"preg4")
            NSUserDefaults.standardUserDefaults().synchronize()
            //self.dismissViewControllerAnimated(true, completion: nil)
            let pr1 = NSUserDefaults.standardUserDefaults().stringForKey("preg1") as String!
            self.self.pregunta.text = pr1
            let resp_1 = NSUserDefaults.standardUserDefaults().stringForKey("preg2") as String!
            //respA.setTitle(resp1, forState: UIControlState.Normal)
            let resp_2 = NSUserDefaults.standardUserDefaults().stringForKey("preg3") as String!
            //self.self.respB.text = resp_2
            
            let resp_3 = NSUserDefaults.standardUserDefaults().stringForKey("preg4") as String!
            //self.self.respC.text = resp_3
            
            self.respA.setAttributedTitle( NSAttributedString(string: resp_1) , forState: .Normal)
            self.respB.setAttributedTitle( NSAttributedString(string: resp_2) , forState: .Normal)
            self.respC.setAttributedTitle( NSAttributedString(string: resp_3) , forState: .Normal)
            
            
            
            
            
            
            
        }
        
        task.resume()
        
        /*let t1 = NSUserDefaults.standardUserDefaults().stringForKey("isUserLoggedIn") as String!
         let t2 = NSUserDefaults.standardUserDefaults().stringForKey("UserCorreo") as String!
         
         print("t1 \(t1)")
         print("t2 \(t2)")
         
         if(t1 == "Success"){
         let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
         
         let vc: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("otherViewController") as! UINavigationController
         
         self.presentViewController(vc, animated: true, completion: nil)
         }
         else {
         let alertController = UIAlertController(title: "Error", message: "Correo y/o Contraseña Incorrectos", preferredStyle: .Alert)
         let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
         print("boton apretado para cancelacion");
         }
         alertController.addAction(cancelAction)
         self.presentViewController(alertController, animated: true, completion:nil)
         
         }*/
        
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
