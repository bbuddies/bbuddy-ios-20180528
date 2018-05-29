//
// Created by Jackson Zhang on 21/02/2017.
// Copyright (c) 2017 odd-e. All rights reserved.
//

import Foundation

enum ApplicationError: Error {
    case argument
}

class Budgets {
    private var budgets = Array<DTO.Budget>()
    private var api: Api

    var count: Int {
        return budgets.count
    }

    convenience init(){
        self.init(api: Api())
    }

    init(api: Api){
        self.api = api
    }

    func fetch(to action: @escaping () -> Void){
        api.getBudgets { [unowned me = self] budgets in
            me.budgets = budgets
            action()
        }
    }
    
    func delete(at index: Int, to action: @escaping () -> Void){
        api.deleteBudget(budgets[index]) { [unowned me = self] in
            me.budgets.remove(at: index)
            action()
        }
    }

    subscript(index: Int) -> Budget {
        get {
            return Budget.from(budgets[index])
        }
    }
}
