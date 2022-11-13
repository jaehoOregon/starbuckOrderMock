//
//  menuViewTest.swift
//  starbuckOrderMock
//
//  Created by Jaeho Jung on 2022/11/13.
//

import UIKit

class menuViewTest: UIViewController {

    @IBOutlet weak var MenuDrinkTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Navigation
}

extension menuViewTest: UITableViewDelegate {
    
}

extension menuViewTest: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        return cell
    }
    
    
}

