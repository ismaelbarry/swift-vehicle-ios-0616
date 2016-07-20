//
//  Racecar.swift
//  swift-vehicle-lab
//
//  Created by Ismael Barry on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar : Car {
    
    let driver : String
    var sponsors :[String]
    
    // The designated initializer should accept eight (8) arguments total, six for the superclass's initializer, and two for the new properties. It should set these two new properties to the arguments, and pass the other six along to the superclass's initializer.
    init(name:String, weight:Double, maxSpeed:Double, transmission:String, cylinders:Int, milesPerGallon:Double, driver:String, sponsors:[String]) {
        
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    // Override the accelerate() method that is inherited from the Vehicle class. It should increase the speed by one fifth (1/5th) of the maxSpeed. However, it should not increase the speed beyond the maxSpeed.
    override func accelerate() {
        
        if self.speed < self.maxSpeed {
            
            self.speed = self.speed + (self.maxSpeed * 0.20)
        }
    }
    
    // Override the decelerate() method that is also inherited from the Vehicle class. It should decrease the speed by one fifth (1/5th) of the maxSpeed. However, it should not decrease the speed below zero.
    override func decelerate() {
        
        if self.speed > 0 {
            
            self.speed = self.speed - (self.maxSpeed * 0.20)
        }
    }
    
    // If the race car is in motion, it should increase the heading by 90 angular degrees, but only decrease the speed by one quarter (1/4) of its current value (instead of one half).
    func driftRight() {
        
        if self.speed != 0 {
            
            if self.heading < 270 {
                
                self.heading = self.heading + 90
                self.speed = self.speed - (self.speed * 0.25)
                
            } else if self.heading == 270 {
                
                self.heading = 0
                self.speed = self.speed - (self.speed * 0.25)
                
            } else if self.heading == 360 {
                
                self.heading = 90
                self.speed = self.speed / 2
                
            }
        }
    }
    
    //  If the race car is in motion, it should have the effect of decreasing the heading by 90 angular degrees (handle this the same way you handled the heading in turnLeft()), but only decrease the speed by one quarter (1/4) of its current value (instead of one half).
    func driftLeft() {
        
        if self.speed != 0 {
            
            if self.heading == 90 || self.heading == 180 || self.heading == 270 || self.heading == 360 {
                
                self.heading = self.heading - 90
                self.speed = self.speed - (self.speed * 0.25)
                
            } else if self.heading == 0 {
                
                self.heading = 270
                self.speed = self.speed - (self.speed * 0.25)
                
            }
        }
    }
}