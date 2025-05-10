//
//  MainViewController.swift
//  SportsApp
//
//  Created by Mustafa Hussain on 10/05/2025.
//

import UIKit

class SportsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var sportsTableView: UITableView!
    private var sports: [String] = [
        "Football",
        "Cricket",
        "Tennis",
        "Basketball"
    ]
    
    private var sportsImages: [String] = [
        "football_card_image",
        "cricket_card_image",
        "tennis_card_image",
        "basketball_card_image"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sportsTableView.dataSource = self
        sportsTableView.delegate = self
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 185
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sports.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SportsCellTableViewCell
        
        cell.sportImage?.image = UIImage(named: sportsImages[indexPath.row])
        cell.sportTitle?.text = sports[indexPath.row]
        
        //make image and title rounded
        cell.sportImage.layer.cornerRadius = 12
        cell.sportImage.layer.masksToBounds = true
        
        cell.sportTitle.layer.cornerRadius = 8
        cell.sportTitle.layer.masksToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(sports[indexPath.row])
    }

}
