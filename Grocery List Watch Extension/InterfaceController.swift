//
//  InterfaceController.swift
//  Grocery List Watch Extension
//
//  Created by Jean Claude Ndayisenga on 16/01/2021.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var myTable: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        super.awake(withContext: context)
        
        let array = ["apples", "oranges", "grapes", "banana", "avocado"]
        
        myTable.setNumberOfRows(5, withRowType: "cell")
        
        var x = 0
        for fruit in array {
            
            let row = myTable.rowController(at: x) as! RowController
            row.myLabel.setText(fruit)
            x += 1
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    
    
}
