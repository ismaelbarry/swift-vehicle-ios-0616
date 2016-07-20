//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Ismael Barry on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    // Override the climb() method to increase the jet's altitude by one fifth (1/5) of the maxAltitude (instead of one tenth). Similar to the superclass's implementation, this method should decelerate the plane, should not increase the altitude beyond the maxAltitude, and can only be performed by a jet that is in flight.
    override func climb() {
        
        if self.inFlight == true {
            
            if self.altitude < self.maxAltitude {
                
                self.altitude = self.altitude + (self.maxAltitude * 0.20)
                self.decelerate()
            }
        }
    }
    
    // Override the dive() method to decrease the jet's altitude by one fifth (1/5) of the maxAltitude (instead of one tenth). Similar to the superclass's implementation, this method should accelerate the plane, should not decrease the altitude below zero, and can only be performed by a jet that is in flight.
    override func dive() {
        
        if self.inFlight == true {
            
            if self.altitude > 0 {
                
                self.altitude = self.altitude - (self.maxAltitude * 0.20)
                self.accelerate()
            }
        }
    }
    
    // This method should set the speed to twice the value of the jet's maxSpeed but only if the jet is in flight and already traveling at its maximum speed.
    func afterburner() {
       
        if (inFlight == true) && (self.speed == self.maxSpeed) {
            
            self.speed = self.maxSpeed * 2
        }
    }
}