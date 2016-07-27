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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func loginData(sender: AnyObject) {
        
        if (correoData.text == "" || passData.text == ""){
            let alertController = UIAlertController(title: "Error", message: "Es necesario llenar los campos", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
                print("boton apretado para cancelacion");
            }
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if(correoData.text == "billy@palindromo.com" || passData.text == "1234"){
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("otherViewController") as! UINavigationController
            
            self.presentViewController(vc, animated: true, completion: nil)
        }
        else {
            let alertController = UIAlertController(title: "Error", message: "Correo y/o Contraseña Invalido", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
                print("boton apretado para cancelacion");
            }
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        
        /*else {
            
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
                print(resultValue)
                //print("responseString = \(resultValue)")
            
                if(resultValue=="Success"){
                    
                    NSUserDefaults.standardUserDefaults().setBool(true, forKey:"isUserLoggedIn")
                    NSUserDefaults.standardUserDefaults().synchronize()
                    self.dismissViewControllerAnimated(true, completion: nil)
                 
                }
                
          
            
            }
            
            task.resume()
            
            
        }*/
    }

    
    }

