//
//  LocationMenu.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates on 7/28/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import Foundation


class LocationMenu: NSObject {
    
    //properties
    
    var correo: String!
    var equipo: String!

    
    
    
    
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(correo: String, equipo: String) {
        
        self.correo = correo
        self.equipo = equipo

        
    }
    
    
    //prints object's current state
    
    override var description: String {
        return "correo:\(correo),equipo:\(equipo)"
        
    }
    
    
}