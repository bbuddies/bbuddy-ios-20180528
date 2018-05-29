//
//  BudgetDetailViewController.swift
//  bbuddy
//
//  Created by ef on 28/05/2018.
//  Copyright © 2018 odd-e. All rights reserved.
//

import UIKit

class BudgetDetailViewController: UIViewController {
    
    @IBOutlet weak var monthField: UITextField!
    @IBOutlet weak var amountField: UITextField!
    
    var budget: Budget! {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI(){
        if monthField != nil {
            monthField.text = budget.month
            amountField.text = "\(budget.amount)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let picker = MonthYearPickerView()
        picker.onDateSelected = { [unowned me = self] (month: Int, year: Int) in
            let month = String(format: "%d-%02d", year, month)
            me.budget.month = month
            me.monthField.text = month
        }
//        monthField.inputView = picker
        picker.onDateSelected!(picker.month, picker.year)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    @IBAction func saveBudget(_ sender: UIButton) {
        if let month = monthField.text, let amount = Int(amountField.text ?? ""){
            budget.month = month
            budget.amount = amount
            budget.save {
                DispatchQueue.main.async { [unowned me = self] in
                    _ = me.navigationController?.popViewController(animated: true)
                }
            }
        }
    }
}
