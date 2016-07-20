//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Ismael Barry on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    
    let maxAltitude : Double
    
    var altitude : Double = 0
    
    // Program inFlight to return True if both the speed and the altitude are greater than zero.
    var inFlight : Bool { return (self.speed > 0) && (self.altitude > 0)}
    
    // Write a designated initializer that takes four arguments, three for the superclass's properties and one for maxAltitude.
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double ) {
        
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
        
    }
    
    // takeOff() which only affects a plane that is not in flight. This method should set the speed and altitude properties to one tenth (1/10th) of their maximums.
    func takeoff() {
        
        if !inFlight {
            
            self.speed = self.maxSpeed * 0.10
            self.altitude = self.altitude + (self.maxAltitude * 0.10)
        }
    }
    
    // land() which sets the speed and altitude properties to zero.
    func land() {
        
        self.speed = 0
        self.altitude = 0
    }
    
    // climb() which increases the altitude by one tenth (1/10th) of the plane's maxAltitude and causes the plane to decelerate. This method should not increase the altitude beyond the maxAltitude and can only be performed when the plane is in flight.
    func climb() {
        
        if inFlight == true {
           
            if self.altitude < self.maxAltitude {
                
                self.altitude = self.altitude + (self.maxAltitude * 0.10)
                self.decelerate()
            } 
        }
    }
    
    // dive() which decreases the altitude by one tenth (1/10th) of the plane's maxAltitude and causes the plane to accelerate. This method should not decrease the altitude below zero and can only be performed if the plane is not already on the ground. However, if the plane's speed is zero, it is still in the air but has "stalled" and is still able to perform a dive in order to convert altitude into speed.
    func dive() {
        // TODO:
        if self.altitude > 0 {
            
            if self.altitude > 0 || self.speed != 0{
                
                self.altitude = self.altitude - (self.maxAltitude * 0.10)
                self.accelerate()
            
            }
            if self.altitude > 0 && self.speed == 0 {
                
                self.altitude = self.altitude - (self.maxAltitude * 0.10)
                self.accelerate()
                
            }
        }
    }
    
    // bankRight() which increases the heading by 45 angular degrees but only decreases the speed by one tenth (1/10th) of its current value. This method can only be performed by a plane that is in flight.
    func bankRight() {
        
        if inFlight == true {
            
            if self.heading < 270 {
               
                self.heading = self.heading + 45
                self.speed = self.speed - (self.speed * 0.10)
                
            } else if self.heading == 360 {
                
                self.heading = 90
                self.speed = self.speed - (self.speed * 0.10)
            }
        }
    }
    
    // bankLeft() which has the effect of decreasing the heading by 45 angular degrees, but only decreases the speed by one tenth (1/10th) of its current value. This method can only be performed by a plane this is in flight.
    func bankLeft() {
        
        if inFlight == true {
            
            if self.heading == 0 {
                
                self.heading = 315
                self.speed = self.speed - (self.speed * 0.10)
            
            } else if self.heading == 45 {
            
                self.heading = 0
                self.speed = self.speed - (self.speed * 0.10)
                
            } else {
                
                self.heading = self.heading - 45
                self.speed = self.speed - (self.speed * 0.10)
                
            }
        }
    }
}