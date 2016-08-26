//
//  agendaViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates on 7/28/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit

class agendaViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "fondo_menu_agenda.png")!.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
