//
//  DateSpan.swift
//  bbuddy
//
//  Created by ef on 30/05/2018.
//  Copyright © 2018 odd-e. All rights reserved.
//

import Foundation

enum PositionResult {
    case same
    case left
    case middle
    case right
    case out
}

struct DateSpan {
    var from: Date
    var to: Date
    
    var days: Int {
        let calendar = NSCalendar.current
        let date1 = calendar.startOfDay(for: from)
        let date2 = calendar.startOfDay(for: to)
        let components = calendar.dateComponents([.day], from: date1, to: date2)
        return components.day! + 1
    }
    
    var interval: TimeInterval {
        return to.timeIntervalSince(from)
    }
    
    func positionInMonths(date: Date) throws -> PositionResult {
        
        let num = date.numOfMonthYear()
        let fromNum = from.numOfMonthYear()
        let toNum = to.numOfMonthYear()
        
        if fromNum == toNum {
            return num == fromNum ? .same : .out
        }
        
        if num < fromNum || num > toNum {
            return .out
        }
        
        if num == fromNum {
            return .left
        }
        
        if num == toNum {
            return .right
        }
        
        if num > fromNum && num < toNum {
            return .middle
        }
        
        throw ApplicationError.argument
    }
}
