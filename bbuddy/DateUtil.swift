//
//  DateUtil.swift
//  bbuddy
//
//  Created by ef on 29/05/2018.
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

extension Date {
    
    static func days(from: Date, to: Date) -> Int {
        let calendar = NSCalendar.current
        let date1 = calendar.startOfDay(for: from)
        let date2 = calendar.startOfDay(for: to)
        let components = calendar.dateComponents([.day], from: date1, to: date2)
        return components.day! + 1
    }
    
    func daysInCurrentMonth() -> Int {
        let calendar = NSCalendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        
        let dateComponents = DateComponents(year: year, month: month)
        let date = calendar.date(from: dateComponents)!
        
        let range = calendar.range(of: .day, in: .month, for: date)!
        return range.count
    }
    
    func firstDayOfMonth() -> Date {
        let calendar = NSCalendar.current
        
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = 1
        dateComponents.timeZone = calendar.timeZone
        
        return calendar.date(from: dateComponents)!
    }
    
    func daysPastInMonth() -> Int {
        return Date.days(from: self.firstDayOfMonth(), to: self)
    }
    
    func daysRemainInMonth() -> Int {
        let calendar = NSCalendar.current
        let dateComponents = NSDateComponents()
        dateComponents.month = 1
        dateComponents.day = -1
        dateComponents.timeZone = calendar.timeZone
        let lastDayOfMonth = calendar.date(byAdding: dateComponents as DateComponents, to: self.firstDayOfMonth())!
        return Date.days(from: self, to: lastDayOfMonth)
    }
    
    func positionInMonths(from: Date, to: Date) throws -> PositionResult {
        
        let num = self.numOfMonthYear()
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
    
    func numOfMonthYear() -> Int {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        return year * 100 + month
    }
}
