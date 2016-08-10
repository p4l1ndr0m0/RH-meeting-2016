//
//  d1ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates on 7/28/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class d1ViewController: UIViewController {
    
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var salon: UILabel!
    @IBOutlet weak var horario: UILabel!
    @IBOutlet weak var codigo: UILabel!

    var selectedLocation : LocationUno!
    var imagenFinal: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondo_agenda.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        nombre.text = self.selectedLocation?.nombre
        salon.text = self.selectedLocation?.salon
        horario.text = self.selectedLocation?.horario
        codigo.text = self.selectedLocation?.codigo
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
