//
//  locationpr1.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 8/17/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import Foundation

class locationpr1: NSObject {
    
    //properties
    
    var pregunta: String!
    var r1: String!
    var r2:  String!
    var r3: String!
    
    
    
    
    
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(pregunta: String, r1: String, r2: String, r3: String) {
        
        self.pregunta = pregunta
        self.r1 = r1
        self.r2 = r2
        self.r3 = r3
        
        
    }
    
    
    //prints object's current state
    
    override var description: String {
        return "pregunta:\(pregunta),r1:\(r1),r2:\(r2),r3:\(r3)"
        
    }
    
    
}