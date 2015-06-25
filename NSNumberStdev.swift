//
//  NSNumberStdev.swift
//  
//
//  Created by Paul Renson on 25/06/15.
//
//

import Foundation

extension Array where T:NSNumber {
    
    var stdev : Double {
        if self.count == 1 {
            return 0
        }
        
        let mean = self.mean
        var sum = 0.0
        for number in self {
            let difference = number.doubleValue - mean
            sum += difference * difference
        }
        return sqrt( sum / Double(self.count - 1))
    }
    
    private var mean : Double {
        let total = self.reduce(0.0) { $0.doubleValue + $1.doubleValue }.doubleValue
        return total / Double(self.count)
    }
}