//
//  BudgetCalculator.swift
//  bbuddy
//
//  Created by ef on 29/05/2018.
//  Copyright © 2018 odd-e. All rights reserved.
//

import Foundation

class BudgetCalculator {
    
    func calculate(span: DateSpan, budgets: [Budget]) throws -> Decimal {
        
        if span.interval < 0 {
            throw ApplicationError.argument
        }
        
        var sum: Decimal = 0
        
        for budget in budgets {
            
            let date = budget.startDate
            let result = try span.positionInMonths(date: date)
            
            switch result {
            case .same:
                sum = Decimal(budget.amount) * Decimal(span.days) / Decimal(date.daysInCurrentMonth())
                break
            case .left:
                sum += Decimal(budget.amount) * Decimal(span.from.daysRemainInMonth()) / Decimal(span.from.daysInCurrentMonth())
            case .middle:
                sum += Decimal(budget.amount)
            case .right:
                sum += Decimal(budget.amount) * Decimal(span.to.daysPastInMonth()) / Decimal(span.to.daysInCurrentMonth())
            case .out:
                continue
            }
        }
        
        return sum
    }
}
