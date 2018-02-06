//
//  ViewController.swift
//  SimpleTable
//
//  Created by Melinda Swartzfager on 2/6/18.
//  Copyright © 2018 Melinda Swartzfager. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames: [String: String] = ["Cafe Deadend": "cafedeadend", "Homei": "homei", "Teakha": "teakha", "Cafe Loisl": "cafeloisl", "Petite Oyster": "petiteoyster", "For Kee Restauraunt": "forkeerestaurant", "Po's Atelier": "posatelier", "Bourke Street Bakery": "bourkestreetbakery", "Haigh's Chocolate": "haighschocolate", "Palomino Espresso": "palominoespresso", "Upstate": "upstate", "Traif": "traif", "Graham Avenue Meats And Deli": "grahamavenuemeats", "Waffle & Wolf": "wafflewolf", "Five Leaves": "fiveleaves", "Cafe Lore": "cafelore", "Confessional": "confessional", "Barrafina": "barrafina", "Donostia": "donostia", "Royal Oak": "royaloak", "CASK Pub and Kitchen": "caskpubkitchen"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let names = Array(restaurantNames.keys)
        
        let name = names[indexPath.row]
        
        cell.textLabel?.text = name
        
        if let image = restaurantNames[name] {
            cell.imageView?.image = UIImage(named: image)
        } else {
            cell.imageView?.image = UIImage(named: "restaurant")
        }
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }


}

