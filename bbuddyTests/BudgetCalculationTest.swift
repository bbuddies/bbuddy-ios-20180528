//
//  myTest.swift
//  bbuddyTests
//
//  Created by ef on 29/05/2018.
//  Copyright © 2018 odd-e. All rights reserved.
//

import XCTest
@testable import bbuddy

class BudgetCalculationTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFullMultipleMonth() throws {
        let b = bbuddy.Budgets()
        b.budgets = [.init(id: 0, month: "2018-2", amount: 100),
                     .init(id: 0, month: "2018-3", amount: 100),
                     .init(id: 0, month: "2018-4", amount: 300)]
        
        let start = dateBy(year: 2018, month: 1, day: 10)
        let end = dateBy(year: 2018, month: 4, day: 20)
        
        XCTAssertEqual(400, try b.sumup(start: start, end: end))
    }
    
    func testSkipMultipleMonth() throws {
        let b = bbuddy.Budgets()
        b.budgets = [.init(id: 0, month: "2018-2", amount: 100),
                     .init(id: 0, month: "2018-4", amount: 300)]
        
        let start = dateBy(year: 2018, month: 1, day: 10)
        let end = dateBy(year: 2018, month: 4, day: 20)
        
        XCTAssertEqual(300, try b.sumup(start: start, end: end))
    }
    
    func testSameMonth() throws {
        let b = bbuddy.Budgets()
        b.budgets = [.init(id: 0, month: "2018-01", amount: 100)]
        
        let start = dateBy(year: 2018, month: 1, day: 10)
        let end = dateBy(year: 2018, month: 1, day: 20)
        
        XCTAssertEqual(Decimal(100*11)/Decimal(31), try b.sumup(start: start, end: end))
    }
    
    func testEmptyMonth() throws {
        let b = bbuddy.Budgets()
        b.budgets = []
        
        let start = dateBy(year: 2018, month: 1, day: 10)
        let end = dateBy(year: 2018, month: 2, day: 20)
        
        XCTAssertEqual(0, try b.sumup(start: start, end: end))
    }
    
    func testCrossYear() throws {
        let b = bbuddy.Budgets()
        b.budgets = [.init(id: 0, month: "2017-12", amount: 100),
                     .init(id: 0, month: "2018-3", amount: 100),
                     .init(id: 0, month: "2018-4", amount: 300)]
        
        let start = dateBy(year: 2017, month: 12, day: 1)
        let end = dateBy(year: 2018, month: 4, day: 30)
        
        XCTAssertEqual(500, try b.sumup(start: start, end: end))
    }
    
    func testInvalidArgument() throws {
        let b = bbuddy.Budgets()
        b.budgets = [.init(id: 0, month: "2017-12", amount: 100),
                     .init(id: 0, month: "2018-3", amount: 100),
                     .init(id: 0, month: "2018-4", amount: 300)]
        
        let start = dateBy(year: 2018, month: 3, day: 1)
        let end = dateBy(year: 2018, month: 1, day: 30)
        
        do {
            _ = try b.sumup(start: start, end: end)
        } catch let e as ApplicationError {
            XCTAssertEqual(ApplicationError.argument, e)
            return
        }
        XCTFail()
    }
    
    private func dateBy(year: Int, month: Int, day: Int) -> Date {
        let calendar = NSCalendar.current
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.timeZone = calendar.timeZone
        return calendar.date(from: dateComponents)!
    }
    
}
