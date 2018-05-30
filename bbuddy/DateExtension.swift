//
//  DateExtension.swift
//  bbuddy
//
//  Created by ef on 29/05/2018.
//  Copyright © 2018 odd-e. All rights reserved.
//

import Foundation

extension Date {
    
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
        return DateSpan(from: self.firstDayOfMonth(), to: self).days
    }
    
    func daysRemainInMonth() -> Int {
        let calendar = NSCalendar.current
        let dateComponents = NSDateComponents()
        dateComponents.month = 1
        dateComponents.day = -1
        dateComponents.timeZone = calendar.timeZone
        let lastDayOfMonth = calendar.date(byAdding: dateComponents as DateComponents, to: self.firstDayOfMonth())!
        return DateSpan(from: self, to: lastDayOfMonth).days
    }
    
    func numOfMonthYear() -> Int {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        return year * 100 + month
    }
}