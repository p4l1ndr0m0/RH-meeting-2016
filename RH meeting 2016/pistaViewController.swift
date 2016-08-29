//
//  pistaViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/20/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class pistaViewController: UIViewController {
    
    var nombre_imagen: String!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondo_rally.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        nombre_imagen = "http://app-ecodsa.com.mx/daimler/galeria/p1.png"
        load_image(nombre_imagen)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    func load_image(urlString:String)
    {
        let imgURL: NSURL = NSURL(string: urlString)!
        let request: NSURLRequest = NSURLRequest(URL: imgURL)
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request){
            (data, response, error) -> Void in
            
            if (error == nil && data != nil)
            {
                func display_image()
                {
                    self.imageView.image = UIImage(data: data!)
                }
                
                dispatch_async(dispatch_get_main_queue(), display_image)
            }
            
        }
        
        task.resume()
        
        
    }

    @IBAction func switchCamara(sender: AnyObject) {
        
        var instagramHooks = "rh://"
        var instagramUrl = NSURL(string: instagramHooks)
        if UIApplication.sharedApplication().canOpenURL(instagramUrl!)
        {
            UIApplication.sharedApplication().openURL(instagramUrl!)
            
        } else {
            
            let alertController = UIAlertController(title: "Error", message: "Falla", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Regresar", style: .Cancel) { (action:UIAlertAction!) in
                print("boton apretado para cancelacion");
            }
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            //redirect to safari because the user doesn't have Instagram
            //UIApplication.sharedApplication().openURL(NSURL(string: "http://instagram.com/")!)
        }
        
        
    }

}
