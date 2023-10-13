//
//  ViewController.swift
//  Hackwich6: The Mighty TableView
//
//  Created by Aina Kodaira on 10/12/23.
//

//HACKWICH #6
// PART 1: PROJECT SET UP
// PART 2: WHAT IS UI TABLEVIEW?
// PART 3: SET UP MAIN.STORYBOARD; ADD "TABLEVIEW" & "TABLEVIEWCELL" IN VC; CONNECT THE TWO TO VC THRU CONNECTIONS INSPECTOR
// PART 4: WHAT ARE DATASOURCE & DELEGATES?
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//HW#6 PART 8: SET UP PROTOYPE CELL
    //PART 8 #2 - CREATE AN OUTLET
    @IBOutlet weak var tableView: UITableView!
    
//HW#6 PART 6: CREATE AN ARRAY USING AN ARRAY LITERAL
    // DECLARE AN ARRAY AND ADD 3 NAMES TO YOUR ARRAY
    var myClassmatesArray = ["Sarah", "Nichole", "Grant"]
//HW#6 PART 5: SET UP VIEWCONTROLLER.SWIFT FILE W/ DELEGATES & DELEGATES METHOD
    // ADD THE PROTOCOLS
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //PART 5 #4
       // return 1
//HW#6 PART 7 : SET UP FOR DATASOURCE METHODS
        // PART 7 #1 - SET NO. OF ROWS TO NO. OF ITEMS IN ARRAY
        return myClassmatesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //PART 7 #2 - ADDED THE FOLLOWING BLOCK OF CODE
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = myClassmatesArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

