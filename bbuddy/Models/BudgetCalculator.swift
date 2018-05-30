//
//  BudgetCalculator.swift
//  bbuddy
//
//  Created by ef on 29/05/2018.
//  Copyright © 2018 odd-e. All rights reserved.
//

import Foundation

class BudgetCalculator {
    
    func calculate(from: Date, to: Date, budgets: [Budget]) throws -> Decimal {
        
        if to.timeIntervalSince(from) < 0 {
            throw ApplicationError.argument
        }
        
        var sum: Decimal = 0
        
        for budget in budgets {
            
            let date = budget.startDate
            let result = try date.positionInMonths(from: from, to: to)
            
            switch result {
            case .same:
                sum = Decimal(budget.amount) * Decimal(Date.days(from: from, to: to)) / Decimal(date.daysInCurrentMonth())
                break
            case .left:
                sum += Decimal(budget.amount) * Decimal(from.daysRemainInMonth()) / Decimal(from.daysInCurrentMonth())
            case .middle:
                sum += Decimal(budget.amount)
            case .right:
                sum += Decimal(budget.amount) * Decimal(to.daysPastInMonth()) / Decimal(to.daysInCurrentMonth())
            case .out:
                continue
            }
        }
        
        return sum
    }
}
