//
//  SecondViewController.swift
//  ShoppingApp
//
//  Created by Shrinal Patel on 28/10/21.
//  Student id: 301204864

import UIKit

class SecondViewController: UIViewController {
    
    var shoppingList: String?
    var item1: String?
    var item2: String?
    var item3: String?
    var item4: String?
    var item5: String?
    var item1Quantity: String?
    var item2Quantity: String?
    var item3Quantity: String?
    var item4Quantity: String?
    var item5Quantity: String?
    
    // Shopping List Name Output Label
    
    @IBOutlet weak var ShoppingListNameO: UILabel!
    
    // Item 1-5 Names Output Labels
    
    @IBOutlet weak var Item1NameO: UILabel!
    
    @IBOutlet weak var Item2NameO: UILabel!
    
    @IBOutlet weak var Item3NameO: UILabel!
    
    @IBOutlet weak var Item4NameO: UILabel!
    
    @IBOutlet weak var Item5NameO: UILabel!
    
    // Items 1-5 Quantity Output Labels
    
    @IBOutlet weak var Item1LabelO: UILabel!
    
    @IBOutlet weak var Item2LabelO: UILabel!
    
    @IBOutlet weak var Item3LabelO: UILabel!
    
    @IBOutlet weak var Item4LabelO: UILabel!
    
    @IBOutlet weak var Item5LabelO: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ShoppingListNameO.text = shoppingList
        Item1NameO.text = item1
        Item2NameO.text = item2
        Item3NameO.text = item3
        Item4NameO.text = item4
        Item5NameO.text = item5
        Item1LabelO.text = item1Quantity
        Item2LabelO.text = item2Quantity
        Item3LabelO.text = item3Quantity
        Item4LabelO.text = item4Quantity
        Item5LabelO.text = item5Quantity
        
    }
    
}
