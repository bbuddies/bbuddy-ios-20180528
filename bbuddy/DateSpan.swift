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
    
    func overlappingDays(another: DateSpan) -> Int {
        let left = from > another.from ? from : another.from
        let right = to < another.to ? to : another.to
        return DateSpan(from: left, to: right).days
    }    
}
