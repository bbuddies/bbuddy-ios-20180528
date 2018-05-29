//
//  BudgetTest.swift
//  bbuddy
//
//  Created by Jackson Zhang on 14/02/2017.
//  Copyright © 2017 odd-e. All rights reserved.
//

import Quick
import Nimble
import Cuckoo
@testable import bbuddy

class BudgetTest: QuickSpec {
    override func spec() {
        describe("Budget"){
            it("add a new budget if no id"){
                let budgetDTO = DTO.Budget(id: 0, month: "2018-05", amount: 1000)
                let api = MockApi()
                stub(api){ api in
                    when(api).addBudget(equal(to: budgetDTO), to: anyClosure()).then { budget, action in action() }
                }
                let budget = Budget(api: api)
                budget.month = "2018-05"
                budget.amount = 1000
                budget.save() {}
                verify(api).addBudget(equal(to: budgetDTO), to: anyClosure())
            }
            it("update the budget if with id"){
                let budgetDTO = DTO.Budget(id: 1, month: "2018-06", amount: 200)
                let api = MockApi()
                stub(api){ api in
                    when(api).addBudget(equal(to: budgetDTO), to: anyClosure()).then { budget, action in action() }
                    when(api).updateBudget(equal(to: budgetDTO), to: anyClosure()).then { budget, action in action() }
                }
                let budget = Budget(api: api)
                budget.id = 1
                budget.month = "2018-06"
                budget.amount = 200
                budget.save() {}
                verify(api).updateBudget(equal(to: budgetDTO), to: anyClosure())
            }
        }
    }
}

extension DTO.Budget: Equatable{
    public static func ==(lhs: DTO.Budget, rhs: DTO.Budget) -> Bool {
        return lhs.id == rhs.id && lhs.month == rhs.month && lhs.amount == rhs.amount
    }
}
