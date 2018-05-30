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
            
            sum += Decimal(budget.amount) * Decimal(span.overlappingDays(another: budget.span)) / Decimal(budget.startDate.daysInCurrentMonth())
        }
        
        return sum
    }
}
