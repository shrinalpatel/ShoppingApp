//
//  ViewController.swift
//  ShoppingApp
//
//  Created by Shrinal Patel on 28/10/21.
//  Student id: 301204864

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Item1Label: UILabel!
    
    @IBOutlet weak var Item2Label: UILabel!
    
    @IBOutlet weak var Item3Label: UILabel!
    
    @IBOutlet weak var Item4Label: UILabel!
    
    @IBOutlet weak var Item5Label: UILabel!
    
    @IBOutlet weak var ShoppingListName: UITextField!
    
    @IBOutlet weak var Item1Name: UITextField!
    
    @IBOutlet weak var Item2Name: UITextField!
    
    @IBOutlet weak var Item3Name: UITextField!
    
    @IBOutlet weak var Item4Name: UITextField!
    
    @IBOutlet weak var Item5Name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ShoppingListName.text = "My Shopping List"
    }
    
    // Slider Functions for Items 1-5
    
    @IBAction func item1Slider(_ sender: UISlider) {
        Item1Label.text = String(Int(sender.value))
    }
    
    @IBAction func item2Slider(_ sender: UISlider) {
        Item2Label.text = String(Int(sender.value))
    }
    
    @IBAction func item3Slider(_ sender: UISlider) {
        Item3Label.text = String(Int(sender.value))
    }
    
    @IBAction func item4Slider(_ sender: UISlider) {
        Item4Label.text = String(Int(sender.value))
    }
    
    @IBAction func item5Slider(_ sender: UISlider) {
        Item5Label.text = String(Int(sender.value))
    }
    
    // Cancel Button Function to Reset everything
    
    @IBAction func cancelButton(_ sender: UIButton) {
        ShoppingListName.text = "My Shopping List"
        Item1Label.text = String(1)
        Item2Label.text = String(1)
        Item3Label.text = String(1)
        Item4Label.text = String(1)
        Item5Label.text = String(1)
        Item1Name.text = ""
        Item2Name.text = ""
        Item3Name.text = ""
        Item4Name.text = ""
        Item5Name.text = ""
        
    }
    
    // Saving the values in the next screen by using Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        // Creating variables to store the name of shopping list and items entered in textFields
        
        let shoppingList = ShoppingListName.text ?? ""
        let item1 = Item1Name.text ?? ""
        let item2 = Item2Name.text ?? ""
        let item3 = Item3Name.text ?? ""
        let item4 = Item4Name.text ?? ""
        let item5 = Item5Name.text ?? ""
        let item1Quantity = Item1Label.text ?? ""
        let item2Quantity = Item2Label.text ?? ""
        let item3Quantity = Item3Label.text ?? ""
        let item4Quantity = Item4Label.text ?? ""
        let item5Quantity = Item5Label.text ?? ""
            
        // Create a new variable to store the instance of the SecondViewController
        
        let destinationVC = segue.destination as! SecondViewController
        
        // setting the variables from the SecondViewController that will receive the data
        
        destinationVC.shoppingList = shoppingList
        destinationVC.item1 = item1
        destinationVC.item2 = item2
        destinationVC.item3 = item3
        destinationVC.item4 = item4
        destinationVC.item5 = item5
        destinationVC.item1Quantity = item1Quantity
        destinationVC.item2Quantity = item2Quantity
        destinationVC.item3Quantity = item3Quantity
        destinationVC.item4Quantity = item4Quantity
        destinationVC.item5Quantity = item5Quantity
    }
    
}

