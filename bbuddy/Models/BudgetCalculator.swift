//
//  BudgetCalculator.swift
//  bbuddy
//
//  Created by ef on 29/05/2018.
//  Copyright © 2018 odd-e. All rights reserved.
//

import Foundation

class BudgetCalculator {
    
    func calculate(start: Date, end: Date, budgets: [DTO.Budget]) throws -> Decimal {
        
        if end.timeIntervalSince(start) < 0 {
            throw ApplicationError.argument
        }
        
        var sum: Decimal = 0
        
        for budget in budgets {
            var array = budget.month.components(separatedBy: "-")
            let calendar = NSCalendar.current
            let year = Int(array[0])!
            let month = Int(array[1])!
            
            let yearStart = calendar.component(.year, from: start)
            let monthStart = calendar.component(.month, from: start)
            
            let yearEnd = calendar.component(.year, from: end)
            let monthEnd = calendar.component(.month, from: end)
            
            if year < yearStart || (yearStart == year && month < monthStart) {
                continue
            }
            if year > yearEnd || (monthEnd == year && month > monthEnd) {
                continue
            }
            
            if year == yearStart && month == monthStart &&
                year == yearEnd && month == monthEnd {
                sum = Decimal(budget.amount) * Decimal(Date.days(from: start, to: end)) / Decimal(Date.daysIn(year: year, month: month))
            }
            else if year == yearStart && month == monthStart {
                sum += Decimal(budget.amount) * Decimal(start.daysRemainInMonth()) / Decimal(Date.daysIn(year: yearStart, month: monthStart))
            }
            else if year == yearEnd && month == monthEnd {
                sum += Decimal(budget.amount) * Decimal(end.daysPastInMonth()) / Decimal(Date.daysIn(year: yearEnd, month: monthEnd))
            }
            else {
                sum += Decimal(budget.amount)
            }
        }
        
        return sum
    }
    
    func dateFromMonthString(month: String) -> Date {
        var array = month.components(separatedBy: "-")
        let calendar = NSCalendar.current
        let dateComponents = NSDateComponents()
        dateComponents.year = Int(array[0])!
        dateComponents.month = Int(array[1])!
        dateComponents.timeZone = calendar.timeZone
        return calendar.date(from: dateComponents as DateComponents)!
    }
}
