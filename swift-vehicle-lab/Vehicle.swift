//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Ismael Barry on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    
    let name : String
    
    let weight : Double
    
    let maxSpeed : Double
    
    var speed : Double = 0
    
    // The heading property is measured in angular degrees, 0 to 360. Changes to this property should always keep it within this range.
    var heading : Double = 0
    
    // Write a designated initializer that covers the three immutable properties.
    init (name : String, weight : Double, maxSpeed : Double ) {
        
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        
    }
    
    // Sets the vehicle's speed equal to its maxSpeed:
    func gotFast() {
        
        self.speed = self.maxSpeed
        
    }
    
    // Sets the vehicle's speed to zero:
    func halt() {
        
        self.speed = 0
        
    }
    
    //  Increases the speed by one tenth (1/10th) of the vehicle's maxSpeed. This should not increase the speed beyond the maxSpeed.
    func accelerate() {
        
        if self.speed < self.maxSpeed {
            
            self.speed = self.speed + (self.maxSpeed * 0.10)
        }
    }
    
    // Decreases the speed by one tenth (1/10th) of the vehicle's maxSpeed. This should not decrease the speed below zero.
    func decelerate() {
    
        if self.speed > 0 {
            
            self.speed = self.speed - (self.maxSpeed * 0.10)
        }
    }
    
    // turnRight() which increases the heading by 90 angular degrees and cuts the speed in half (the physics of turning has a momentum cost). This method should have no effect on a stationary vehicle (a vehicle can only turn if it is moving).
    // Top-tip: Remember to keep the heading's value between 0 and 360.
    func turnRight() {
        
        if self.speed != 0 {
            
            if self.heading < 270 {
               
                self.heading = self.heading + 90
                self.speed = self.speed / 2
                
            } else if self.heading == 270 {
                
                self.heading = 0
                self.speed = self.speed / 2
                
            } else if self.heading == 360 {
                
                self.heading = 90
                self.speed = self.speed / 2
                
            }
        }
    }
    
    // turnLeft() which has the effect of decreasing the heading by 90 angular degrees. Similarly, this should cut the speed in half and should have no effect on a stationary vehicle.
    // Top-tip: Remember to keep the heading's value between 0 and 360.
    func turnLeft() {
        
        if self.speed != 0 {
            
            if self.heading == 90 || self.heading == 180 || self.heading == 270 || self.heading == 360 {
                
                self.heading = self.heading - 90
                self.speed = self.speed / 2
                
            } else if self.heading == 0 {
                
                self.heading = 270
                self.speed = self.speed / 2
                
            } else if self.heading == 360 {
                
                self.heading = 270
                self.speed = self.speed / 2
                
            }
        }
    }
}