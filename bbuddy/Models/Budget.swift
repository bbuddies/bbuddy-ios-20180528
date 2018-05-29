//
//  Budget.swift
//  bbuddy
//
//  Created by Jackson Zhang on 14/02/2017.
//  Copyright © 2017 odd-e. All rights reserved.
//

import Foundation

class Budget {
    private var api:Api
    var id = 0
    var month = ""
    var amount = 0

    convenience init(){
        self.init(api: Api())
    }

    init(api: Api){
        self.api = api
    }
    
    func save(_ action: @escaping () -> Void){
        let budgetToUpdate = DTO.Budget(id: id, month: month, amount: amount)
        id == 0 ? api.addBudget(budgetToUpdate, to: action) :
            api.updateBudget(budgetToUpdate, to: action)
    }

    class func from(_ dto: DTO.Budget) -> Budget! {
        let budget = Budget()
        budget.id = dto.id
        budget.month = dto.month
        budget.amount = dto.amount
        return budget
    }
}
