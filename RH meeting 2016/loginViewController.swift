//
//  loginViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 7/25/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    
    @IBOutlet weak var correoData: UITextField!
    
    @IBOutlet weak var passData: UITextField!
    
    var resultado: String!
    var data_alone: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondo_login_final.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func loginData(sender: AnyObject) {
        
        let user_Correo = correoData.text
        
        
        if (correoData.text == "" || passData.text == ""){
            let alertController = UIAlertController(title: "Error", message: "Es necesario llenar los campos", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
                print("boton apretado para cancelacion");
            }
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        
        
        
        else {
            
            let request = NSMutableURLRequest(URL: NSURL(string: "http://app-pepsico.palindromo.com.mx/APP/userLogin.php")!)
            request.HTTPMethod = "POST"
            let postString = "correo=\(correoData.text!)&passw=\(passData.text!)"
            
            request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
            
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
                data, response, error in
                
                if error != nil {
                    print("error\(error)")
                    return
                }
                print("response = \(response)")
                
                let resultValue:String = NSString(data: data!, encoding: NSUTF8StringEncoding) as String!;
                print("este es: \(resultValue)")
                //print("responseString = \(resultValue)")
                 self.resultado = resultValue
                
                self.resultado = self.resultado.stringByReplacingOccurrencesOfString("\"", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
                
                /*NSUserDefaults.standardUserDefaults().setObject(user_Correo, forKey:"isUserLoggedIn")
                NSUserDefaults.standardUserDefaults().setObject(self.resultado, forKey: "UserCorreo")
                NSUserDefaults.standardUserDefaults().synchronize()*/
                
                print("putamadre \(self.resultado)")
                /*let d1 = NSUserDefaults.standardUserDefaults().stringForKey("isUserLoggedIn") as String!
                let d2 = NSUserDefaults.standardUserDefaults().stringForKey("UserCorreo") as String!
                
                print(d1)
                print(d2)*/
            
                
                
                
                if(self.resultado == "Success"){
                    
                    
                    NSUserDefaults.standardUserDefaults().setObject(self.resultado, forKey: "isUserLoggedIn")
                    NSUserDefaults.standardUserDefaults().setObject(user_Correo, forKey:"UserCorreo")
                    NSUserDefaults.standardUserDefaults().synchronize()
                    //self.dismissViewControllerAnimated(true, completion: nil)
                    let d1 = NSUserDefaults.standardUserDefaults().stringForKey("isUserLoggedIn") as String!
                    let d2 = NSUserDefaults.standardUserDefaults().stringForKey("UserCorreo") as String!
                    
                    print("d1 \(d1)")
                    print("d2 \(d2)")
                    
                                    }
    
                
          
            
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
        
        
    }
    
    
    

    
    }

