//
//  registroViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 7/25/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit
import SRKControls

class registroViewController: UIViewController, UITextFieldDelegate, SRKComboBoxDelegate {
    
    var Area: String!
    
    @IBOutlet weak var nombreI: UITextField!
    
    @IBOutlet weak var paternoI: UITextField!
    @IBOutlet weak var maternoI: UITextField!
    
    @IBOutlet weak var areaI: SRKComboBox!
    
    @IBOutlet weak var correoI: UITextField!
    
    @IBOutlet weak var passwordI: UITextField!
    
    @IBOutlet weak var confPasswordI: UITextField!
    let arrayArea = ["Finanzas","Contabilidad","Recursos Humanos","Marketing"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondo_registro.png")!.drawInRect(self.view.bounds)
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
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        if let txt = textField as? SRKComboBox {
            txt.delegateForComboBox = self
            txt.showOptions()
            return false
        }
        
        return true
    }
    
    
    
    func comboBox(textField:SRKComboBox, didSelectRow row:Int) {
        if textField == self.areaI {
            self.areaI.text = self.arrayArea[row]
        }
        
    }
    
    func comboBoxNumberOfRows(textField:SRKComboBox) -> Int {
        if textField == self.areaI {
            return self.arrayArea.count
        }
                else {
            return 0
        }
    }
    
    func comboBox(textField:SRKComboBox, textForRow row:Int) -> String {
        if textField == self.areaI {
            return self.arrayArea[row]
        }
        
        else {
            return ""
        }
    }
    
    func comboBoxPresentingViewController(textField:SRKComboBox) -> UIViewController {
        return self
    }
    
    func comboBoxRectFromWhereToPresent(textField:SRKComboBox) -> CGRect {
        return textField.frame
    }
    
    func comboBoxFromBarButton(textField:SRKComboBox) -> UIBarButtonItem? {
        return nil
    }
    
    func comboBoxTintColor(textField:SRKComboBox) -> UIColor {
        return UIColor.blackColor()
    }
    
    func comboBoxToolbarColor(textField:SRKComboBox) -> UIColor {
        return UIColor.whiteColor()
    }
    
    func comboBoxDidTappedCancel(textField:SRKComboBox) {
        textField.text = ""
    }
    
    func comboBoxDidTappedDone(textField:SRKComboBox) {
        print("Let's do some action here")
        
        Area = areaI.text
        
    }

    @IBAction func enviarRegistro(sender: AnyObject) {
        
        if (nombreI.text == "" || paternoI.text == "" || maternoI.text == "" || areaI.text == "" ||
            correoI.text == "" ||
            passwordI.text == ""){
            let alertController = UIAlertController(title: "Error", message: "Es necesario llenar los campos de Nombre, Apellido Paterno, Apellido Materno, Area, Correo Electronico y contraseña", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
                print("boton apretado para cancelacion");
            }
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        else {
            
            let request = NSMutableURLRequest(URL: NSURL(string: "http://app-pepsico.palindromo.com.mx/APP/registro.php")!)
            request.HTTPMethod = "POST"
            let postString = "nombre=\(nombreI.text!)&paterno=\(paternoI.text!)&materno=\(maternoI.text!)&area=\(Area)&correo=\(correoI.text!)&passw=\(passwordI.text!)"
            
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
            
            if(passwordI.text == confPasswordI.text){
                let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                
                let vc: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("newViewController") as! UINavigationController
                
                self.presentViewController(vc, animated: true, completion: nil)
            }
            else {
                let alertController = UIAlertController(title: "Error", message: "La contraseña no coincide", preferredStyle: .Alert)
                let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
                    print("boton apretado para cancelacion");
                }
                alertController.addAction(cancelAction)
                self.presentViewController(alertController, animated: true, completion:nil)
                
            }

            
        }
        
    }

}
