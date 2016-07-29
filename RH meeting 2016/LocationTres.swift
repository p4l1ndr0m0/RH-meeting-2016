//
//  LocationTres.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates on 7/28/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import Foundation

class LocationTres: NSObject {
    
    //properties
    
    var nombre: String!
    var salon: String!
    var horario:  String!
    var codigo: String!
    var img: String!
    
    
    
    
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(nombre: String, salon: String, horario: String, codigo: String, img: String) {
        
        self.nombre = nombre
        self.salon = salon
        self.horario = horario
        self.codigo = codigo
        self.img = img
        
    }
    
    
    //prints object's current state
    
    override var description: String {
        return "nombre:\(nombre),salon:\(salon),horario:\(horario),codigo:\(codigo),img:\(img)"
        
    }
    
    
}