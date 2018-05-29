//
//  BudgetsTableViewController.swift
//  bbuddy
//
//  Created by ef on 28/05/2018.
//  Copyright © 2018 odd-e. All rights reserved.
//

import UIKit

class BudgetsTableViewController: UITableViewController {

    @IBOutlet weak var addButton: UIBarButtonItem!
    
    private var budgets = Budgets() {
        didSet{
            tableView.reloadData()
        }
    }
    
    private func fetchBudgets(){
        budgets.fetch(to: refresh)
    }
    
    private func refresh(){
        DispatchQueue.main.async { [unowned me = self] in
            me.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButton.accessibilityIdentifier = "add"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchBudgets()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return budgets.count
    }
    
    private struct Storyboard{
        static let BudgetCellIdentifier = "Budget"
        static let AddBudgetSegue = "AddBudget"
        static let EditBudgetSegue = "EditBudget"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.BudgetCellIdentifier, for: indexPath)
        
        let budget = budgets[indexPath.row]
        cell.textLabel?.text = budget.month
        cell.detailTextLabel?.text = "\(budget.amount)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            budgets.delete(at: indexPath.row, to: refresh)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination
        if let budgetDetailViewController = destinationViewController as? BudgetDetailViewController {
            if segue.identifier == Storyboard.AddBudgetSegue {
                budgetDetailViewController.budget = Budget()
            } else if segue.identifier == Storyboard.EditBudgetSegue {
                if let budgetIndex = tableView.indexPathForSelectedRow?.row {
                    budgetDetailViewController.budget = budgets[budgetIndex]
                }
            }
        }
    }
    
}
