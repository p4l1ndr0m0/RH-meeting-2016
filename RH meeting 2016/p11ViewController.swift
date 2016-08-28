//
//  p11ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/19/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class p11ViewController: UIViewController {
    
    var code_final: String! = "9365"
    
    @IBOutlet weak var validarButton: UIButton!
    @IBOutlet weak var codigo: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    var r1 : Int! = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "11_FondoCompletoInput.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(registroViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
        
    }
    
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    
    
    
    @IBAction func enviarResp(sender: AnyObject) {
        
        if (codigo.text == code_final){
            
            NSUserDefaults.standardUserDefaults().setInteger(r1, forKey:"respuesta11")
            NSUserDefaults.standardUserDefaults().synchronize()
            print(r1)
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            
            let alertController = UIAlertController(title: "Perfecto", message: "Codigo Correcto", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
                print("boton apretado para cancelacion");
            }
            alertController.addAction(cancelAction)
            
            self.presentViewController(alertController, animated: true, completion:nil)
            
            
            
            
            let correoData = NSUserDefaults.standardUserDefaults().stringForKey("UserCorreo")
            
            let request = NSMutableURLRequest(URL: NSURL(string: "http://app-pepsico.palindromo.com.mx/APP/respuestas11.php")!)
            request.HTTPMethod = "POST"
            let postString = "correo=\(correoData!)"
            
            request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
            
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
                data, response, error in
                
                if error != nil {
                    print("error\(error)")
                    return
                }
                print("response = \(response)")
                
                let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
                print("responseString = \(responseString)")
            }
            
            task.resume()
            
            
            
        }
        else {
            
            let alertController = UIAlertController(title: "Error", message: "Codigo Incorrecto", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
                print("boton apretado para cancelacion");
            }
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
    }

}
