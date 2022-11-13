//
//  menuViewDrink.swift
//  starbuckOrderMock
//
//  Created by Jaeho Jung on 2022/11/13.
//

import UIKit

class menuViewDrink: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! menuTableViewCell
        return cell
    }
    

    @IBOutlet weak var drinkMenuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cellNib = UINib(nibName: "menuTableViewCell", bundle: nil)
        drinkMenuTableView.register(cellNib, forCellReuseIdentifier: "myCell")

    }


    // MARK: - Navigation

}
//
//extension menuViewDrink: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! menuTableViewCell
//        return cell
//    }
//}
