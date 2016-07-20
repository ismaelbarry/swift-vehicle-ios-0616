//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by Ismael Barry on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Car : Vehicle {
    
    let transmission : String
    let cylinders : Int
    let milesPerGallon : Double
    
    // Write a designated initializer that takes six arguments total, the three arguments for the superclass's initializer (name, weight, and maxSpeed), and three arguments for these new properties (transmission, cylinders, and milesPerGallon). The initializer should set all three new properties to their associated arguments, and call the superclass's initializer, passing it the correct arguments that it requires.
    init(name : String, weight : Double, maxSpeed : Double, transmission : String, cylinders : Int, milesPerGallon : Double) {
        
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        
        // This is how you call a superclass's initializer:
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    // Takes no arguments and provides no return. This method should simply call the accelerate() method inherited from the superclass.
    func drive() {
        
        self.accelerate()
        
    }
    
    // Takes no arguments and provides no return. This method should simply call the decelerate() method inherited from the superclass.
    func brake() {
        
        self.decelerate()
        
    }
}