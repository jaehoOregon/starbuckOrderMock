//
//  menuDetailViewController.swift
//  starbuckOrderMock
//
//  Created by Jaeho Jung on 2022/11/13.
//

import UIKit

class menuDetailViewController: UIViewController {

    var data: [String]?
    
    @IBOutlet weak var menuDetailKorean: UILabel!
    @IBOutlet weak var menuDetailEnglish: UILabel!
    @IBOutlet weak var menuDetailDescription: UILabel!
    @IBOutlet weak var menuDetailPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(data!)
//        print(data![0])
//        print(data![1])
//        print(data![2])
//        print(data![3])
        menuDetailKorean.text = data?[0]
        menuDetailEnglish.text = data?[1]
        menuDetailPrice.text = data?[3]
        menuDetailDescription.text = data?[2]

    }
    
    // MARK: - Place Order Button Action
    @IBAction func placeOrderBtnClicked(_ sender: UIButton) {
    }
}
