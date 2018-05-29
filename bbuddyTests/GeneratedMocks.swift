// MARK: - Mocks generated from file: bbuddy/Api.swift at 2018-05-29 02:22:31 +0000

//
//  Api.swift
//  bbuddy
//
//  Created by Jackson Zhang on 10/02/2017.
//  Copyright © 2017 odd-e. All rights reserved.
//

import Cuckoo
@testable import bbuddy

import Argo
import Cely
import Foundation
import Moya

class MockApi: Api, Cuckoo.ClassMock {
    typealias MocksType = Api
    typealias Stubbing = __StubbingProxy_Api
    typealias Verification = __VerificationProxy_Api
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    

    

    
    // ["name": "signIn", "returnSignature": "", "fullyQualifiedName": "signIn(_: String, password: String, action: @escaping () -> Void)", "parameterSignature": "_ email: String, password: String, action: @escaping () -> Void", "parameterSignatureWithoutNames": "email: String, password: String, action: @escaping () -> Void", "inputTypes": "String, String, () -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "email, password, action", "call": "email, password: password, action: action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "email", type: "String", range: CountableRange(2476..<2491), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("password"), name: "password", type: "String", range: CountableRange(2493..<2509), nameRange: CountableRange(2493..<2501)), CuckooGeneratorFramework.MethodParameter(label: Optional("action"), name: "action", type: "@escaping () -> Void", range: CountableRange(2511..<2539), nameRange: CountableRange(2511..<2517))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func signIn(_ email: String, password: String, action: @escaping () -> Void)  {
        
            return cuckoo_manager.call("signIn(_: String, password: String, action: @escaping () -> Void)",
                parameters: (email, password, action),
                superclassCall:
                    
                    super.signIn(email, password: password, action: action)
                    )
        
    }
    
    // ["name": "getAccounts", "returnSignature": "", "fullyQualifiedName": "getAccounts(_: @escaping ([DTO.Account]) -> Void)", "parameterSignature": "_ action: @escaping ([DTO.Account]) -> Void", "parameterSignatureWithoutNames": "action: @escaping ([DTO.Account]) -> Void", "inputTypes": "([DTO.Account]) -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "action", "call": "action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "action", type: "@escaping ([DTO.Account]) -> Void", range: CountableRange(2716..<2759), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func getAccounts(_ action: @escaping ([DTO.Account]) -> Void)  {
        
            return cuckoo_manager.call("getAccounts(_: @escaping ([DTO.Account]) -> Void)",
                parameters: (action),
                superclassCall:
                    
                    super.getAccounts(action)
                    )
        
    }
    
    // ["name": "addAccount", "returnSignature": "", "fullyQualifiedName": "addAccount(_: DTO.Account, to: @escaping () -> Void)", "parameterSignature": "_ account: DTO.Account, to action: @escaping () -> Void", "parameterSignatureWithoutNames": "account: DTO.Account, action: @escaping () -> Void", "inputTypes": "DTO.Account, () -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "account, action", "call": "account, to: action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "account", type: "DTO.Account", range: CountableRange(2988..<3010), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("to"), name: "action", type: "@escaping () -> Void", range: CountableRange(3012..<3043), nameRange: CountableRange(3012..<3014))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func addAccount(_ account: DTO.Account, to action: @escaping () -> Void)  {
        
            return cuckoo_manager.call("addAccount(_: DTO.Account, to: @escaping () -> Void)",
                parameters: (account, action),
                superclassCall:
                    
                    super.addAccount(account, to: action)
                    )
        
    }
    
    // ["name": "updateAccount", "returnSignature": "", "fullyQualifiedName": "updateAccount(_: DTO.Account, to: @escaping () -> Void)", "parameterSignature": "_ account: DTO.Account, to action: @escaping () -> Void", "parameterSignatureWithoutNames": "account: DTO.Account, action: @escaping () -> Void", "inputTypes": "DTO.Account, () -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "account, action", "call": "account, to: action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "account", type: "DTO.Account", range: CountableRange(3166..<3188), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("to"), name: "action", type: "@escaping () -> Void", range: CountableRange(3190..<3221), nameRange: CountableRange(3190..<3192))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func updateAccount(_ account: DTO.Account, to action: @escaping () -> Void)  {
        
            return cuckoo_manager.call("updateAccount(_: DTO.Account, to: @escaping () -> Void)",
                parameters: (account, action),
                superclassCall:
                    
                    super.updateAccount(account, to: action)
                    )
        
    }
    
    // ["name": "deleteAccount", "returnSignature": "", "fullyQualifiedName": "deleteAccount(_: DTO.Account, to: @escaping () -> Void)", "parameterSignature": "_ account: DTO.Account, to action: @escaping () -> Void", "parameterSignatureWithoutNames": "account: DTO.Account, action: @escaping () -> Void", "inputTypes": "DTO.Account, () -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "account, action", "call": "account, to: action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "account", type: "DTO.Account", range: CountableRange(3346..<3368), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("to"), name: "action", type: "@escaping () -> Void", range: CountableRange(3370..<3401), nameRange: CountableRange(3370..<3372))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func deleteAccount(_ account: DTO.Account, to action: @escaping () -> Void)  {
        
            return cuckoo_manager.call("deleteAccount(_: DTO.Account, to: @escaping () -> Void)",
                parameters: (account, action),
                superclassCall:
                    
                    super.deleteAccount(account, to: action)
                    )
        
    }
    
    // ["name": "getBudgets", "returnSignature": "", "fullyQualifiedName": "getBudgets(_: @escaping ([DTO.Budget]) -> Void)", "parameterSignature": "_ action: @escaping ([DTO.Budget]) -> Void", "parameterSignatureWithoutNames": "action: @escaping ([DTO.Budget]) -> Void", "inputTypes": "([DTO.Budget]) -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "action", "call": "action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "action", type: "@escaping ([DTO.Budget]) -> Void", range: CountableRange(3523..<3565), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func getBudgets(_ action: @escaping ([DTO.Budget]) -> Void)  {
        
            return cuckoo_manager.call("getBudgets(_: @escaping ([DTO.Budget]) -> Void)",
                parameters: (action),
                superclassCall:
                    
                    super.getBudgets(action)
                    )
        
    }
    
    // ["name": "addBudget", "returnSignature": "", "fullyQualifiedName": "addBudget(_: DTO.Budget, to: @escaping () -> Void)", "parameterSignature": "_ budget: DTO.Budget, to action: @escaping () -> Void", "parameterSignatureWithoutNames": "budget: DTO.Budget, action: @escaping () -> Void", "inputTypes": "DTO.Budget, () -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "budget, action", "call": "budget, to: action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "budget", type: "DTO.Budget", range: CountableRange(3792..<3812), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("to"), name: "action", type: "@escaping () -> Void", range: CountableRange(3814..<3845), nameRange: CountableRange(3814..<3816))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func addBudget(_ budget: DTO.Budget, to action: @escaping () -> Void)  {
        
            return cuckoo_manager.call("addBudget(_: DTO.Budget, to: @escaping () -> Void)",
                parameters: (budget, action),
                superclassCall:
                    
                    super.addBudget(budget, to: action)
                    )
        
    }
    
    // ["name": "updateBudget", "returnSignature": "", "fullyQualifiedName": "updateBudget(_: DTO.Budget, to: @escaping () -> Void)", "parameterSignature": "_ budget: DTO.Budget, to action: @escaping () -> Void", "parameterSignatureWithoutNames": "budget: DTO.Budget, action: @escaping () -> Void", "inputTypes": "DTO.Budget, () -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "budget, action", "call": "budget, to: action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "budget", type: "DTO.Budget", range: CountableRange(3964..<3984), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("to"), name: "action", type: "@escaping () -> Void", range: CountableRange(3986..<4017), nameRange: CountableRange(3986..<3988))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func updateBudget(_ budget: DTO.Budget, to action: @escaping () -> Void)  {
        
            return cuckoo_manager.call("updateBudget(_: DTO.Budget, to: @escaping () -> Void)",
                parameters: (budget, action),
                superclassCall:
                    
                    super.updateBudget(budget, to: action)
                    )
        
    }
    
    // ["name": "deleteBudget", "returnSignature": "", "fullyQualifiedName": "deleteBudget(_: DTO.Budget, to: @escaping () -> Void)", "parameterSignature": "_ budget: DTO.Budget, to action: @escaping () -> Void", "parameterSignatureWithoutNames": "budget: DTO.Budget, action: @escaping () -> Void", "inputTypes": "DTO.Budget, () -> Void", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "budget, action", "call": "budget, to: action", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "budget", type: "DTO.Budget", range: CountableRange(4138..<4158), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("to"), name: "action", type: "@escaping () -> Void", range: CountableRange(4160..<4191), nameRange: CountableRange(4160..<4162))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func deleteBudget(_ budget: DTO.Budget, to action: @escaping () -> Void)  {
        
            return cuckoo_manager.call("deleteBudget(_: DTO.Budget, to: @escaping () -> Void)",
                parameters: (budget, action),
                superclassCall:
                    
                    super.deleteBudget(budget, to: action)
                    )
        
    }
    

	struct __StubbingProxy_Api: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ email: M1, password: M2, action: M3) -> Cuckoo.ClassStubNoReturnFunction<(String, String, () -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: action) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "signIn(_: String, password: String, action: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func getAccounts<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.ClassStubNoReturnFunction<(([DTO.Account]) -> Void)> where M1.MatchedType == ([DTO.Account]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([DTO.Account]) -> Void)>] = [wrap(matchable: action) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "getAccounts(_: @escaping ([DTO.Account]) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func addAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.ClassStubNoReturnFunction<(DTO.Account, () -> Void)> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "addAccount(_: DTO.Account, to: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func updateAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.ClassStubNoReturnFunction<(DTO.Account, () -> Void)> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "updateAccount(_: DTO.Account, to: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func deleteAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.ClassStubNoReturnFunction<(DTO.Account, () -> Void)> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "deleteAccount(_: DTO.Account, to: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func getBudgets<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.ClassStubNoReturnFunction<(([DTO.Budget]) -> Void)> where M1.MatchedType == ([DTO.Budget]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([DTO.Budget]) -> Void)>] = [wrap(matchable: action) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "getBudgets(_: @escaping ([DTO.Budget]) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func addBudget<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ budget: M1, to action: M2) -> Cuckoo.ClassStubNoReturnFunction<(DTO.Budget, () -> Void)> where M1.MatchedType == DTO.Budget, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Budget, () -> Void)>] = [wrap(matchable: budget) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "addBudget(_: DTO.Budget, to: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func updateBudget<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ budget: M1, to action: M2) -> Cuckoo.ClassStubNoReturnFunction<(DTO.Budget, () -> Void)> where M1.MatchedType == DTO.Budget, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Budget, () -> Void)>] = [wrap(matchable: budget) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "updateBudget(_: DTO.Budget, to: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func deleteBudget<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ budget: M1, to action: M2) -> Cuckoo.ClassStubNoReturnFunction<(DTO.Budget, () -> Void)> where M1.MatchedType == DTO.Budget, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Budget, () -> Void)>] = [wrap(matchable: budget) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "deleteBudget(_: DTO.Budget, to: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_Api: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ email: M1, password: M2, action: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: action) { $0.2 }]
	        return cuckoo_manager.verify("signIn(_: String, password: String, action: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getAccounts<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ([DTO.Account]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([DTO.Account]) -> Void)>] = [wrap(matchable: action) { $0 }]
	        return cuckoo_manager.verify("getAccounts(_: @escaping ([DTO.Account]) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func addAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("addAccount(_: DTO.Account, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("updateAccount(_: DTO.Account, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func deleteAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("deleteAccount(_: DTO.Account, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getBudgets<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ([DTO.Budget]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([DTO.Budget]) -> Void)>] = [wrap(matchable: action) { $0 }]
	        return cuckoo_manager.verify("getBudgets(_: @escaping ([DTO.Budget]) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func addBudget<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ budget: M1, to action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DTO.Budget, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Budget, () -> Void)>] = [wrap(matchable: budget) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("addBudget(_: DTO.Budget, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateBudget<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ budget: M1, to action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DTO.Budget, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Budget, () -> Void)>] = [wrap(matchable: budget) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("updateBudget(_: DTO.Budget, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func deleteBudget<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ budget: M1, to action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DTO.Budget, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Budget, () -> Void)>] = [wrap(matchable: budget) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("deleteBudget(_: DTO.Budget, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ApiStub: Api {
    

    

    
     override func signIn(_ email: String, password: String, action: @escaping () -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func getAccounts(_ action: @escaping ([DTO.Account]) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func addAccount(_ account: DTO.Account, to action: @escaping () -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func updateAccount(_ account: DTO.Account, to action: @escaping () -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func deleteAccount(_ account: DTO.Account, to action: @escaping () -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func getBudgets(_ action: @escaping ([DTO.Budget]) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func addBudget(_ budget: DTO.Budget, to action: @escaping () -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func updateBudget(_ budget: DTO.Budget, to action: @escaping () -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func deleteBudget(_ budget: DTO.Budget, to action: @escaping () -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

