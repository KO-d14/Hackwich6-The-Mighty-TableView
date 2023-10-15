//
//  secondViewController.swift
//  Hackwich6: The Mighty TableView
//
//  Created by Aina Kodaira on 10/13/23.
//

// TAB 2
//***********************************

//HACKWICH #6 PROBLEM SET #1 & SCREEN RECORDING
// REPEAT PARTS 1-8 FOR SECOND TAB
import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var secondTableView: UITableView!
    
//PROBLEM SET(PS)#2:
//PS#2: #2-Complete all the steps you did in Tab #1. Your subtitle array should include a city from each country in your country array.
    var bucketListCities = ["Seoul", "Venice", "New York"]
    
//HW#6 PART 6:
    var travelBucketList = ["Korea", "Europe", "United States"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // PART 7 #1
        return travelBucketList.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //PART 7 #2
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = travelBucketList[indexPath.row]
        
        //PS#2: #4.
        cell.detailTextLabel?.text = bucketListCities[indexPath.row]
        
        //PART 7 #2
        cell.textLabel?.text = text
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
