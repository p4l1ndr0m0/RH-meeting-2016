//
//  p1ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/4/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class p1ViewController: UIViewController {
    
    var code_final: String! = "camara"
    
    @IBOutlet weak var validarButton: UIButton!
    @IBOutlet weak var validacion: UILabel!
    @IBOutlet weak var codigo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        validarButton.enabled = false
        
        if (codigo.text == code_final){
            validarButton.enabled = true
            validacion.text = "Corecto"
            
        }
        else {
            validarButton.enabled = false
            validacion.text = "Incorrecto"
        }
    }
    
    @IBAction func enviarResp(sender: AnyObject) {
        
        let correoData = NSUserDefaults.standardUserDefaults().stringForKey("UserCorreo")
        
        let request = NSMutableURLRequest(URL: NSURL(string: "http://app-daimler.palindromo.com.mx/APP/respuestas.php")!)
        request.HTTPMethod = "POST"
        let postString = "correo=\(correoData)"
        
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

}
