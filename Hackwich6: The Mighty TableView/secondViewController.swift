//
//  secondViewController.swift
//  Hackwich6: The Mighty TableView
//
//  Created by Aina Kodaira on 10/13/23.
//

//HACKWICH #6 PROBLEM SET #1 & SCREEN RECORDING
// REPEAT PARTS 1-8 FOR SECOND TAB
import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var secondTableView: UITableView!
    
    var travelBucketList = ["Korea", "Europe", "New York"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travelBucketList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = travelBucketList[indexPath.row]
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
