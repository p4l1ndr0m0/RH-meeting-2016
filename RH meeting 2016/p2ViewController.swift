//
//  p2ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/4/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class p2ViewController: UIViewController {
    
    var code_final: String! = "camara"
    
    @IBOutlet weak var validarButton: UIButton!

    @IBOutlet weak var codigo: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "pista2.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        
    }
    
    @IBAction func enviarResp(sender: AnyObject) {
        
        if (codigo.text == code_final){

            var r1 : Int! = 1
            NSUserDefaults.standardUserDefaults().setInteger(r1, forKey:"respuesta2")
            NSUserDefaults.standardUserDefaults().synchronize()
            let correoData = NSUserDefaults.standardUserDefaults().stringForKey("UserCorreo")
            
            let request = NSMutableURLRequest(URL: NSURL(string: "http://app-pepsico.palindromo.com.mx/APP/respuestas2.php")!)
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

        }
        
        
}
}
