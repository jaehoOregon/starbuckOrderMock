//
//  menuDetailViewController.swift
//  starbuckOrderMock
//
//  Created by Jaeho Jung on 2022/11/13.
//

import UIKit

//protocol orderTransfer {
//    func didTapPay(selectedMenu: [])
//}

class menuDetailViewController: UIViewController {

    var data: [String]?
    var orderDict = Orders.orders
    
//    var menuDelegate: orderTransfer!
    
    @IBOutlet weak var menuDetailKorean: UILabel!
    @IBOutlet weak var menuDetailEnglish: UILabel!
    @IBOutlet weak var menuDetailDescription: UILabel!
    @IBOutlet weak var menuDetailPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuDetailKorean.text = data?[0]
        menuDetailEnglish.text = data?[1]
        menuDetailPrice.text = data?[3]
        menuDetailDescription.text = data?[2]

    }
    
    // MARK: - Place Order Button Action
    @IBAction func placeOrderBtnClicked(_ sender: UIButton) {
        
        let selectedMenu = menuDetailKorean.text!
        
        if orderDict[selectedMenu] == nil {
            orderDict["\(String(describing: menuDetailKorean.text!))"] = 1
        } else {
            orderDict[selectedMenu]! = orderDict[selectedMenu]! + 1
        }
        
        print(orderDict)
    }
        
    @IBAction func readyToPay(_ sender: UIButton) {
        
//        let paymentVC = storyboard?.instantiateViewController(withIdentifier: "PayViewController") as! PayViewController
////        menuDelegate.didTapPay(selectedMenu: orderDict)
//        present(paymentVC, animated: true, completion: nil)
        
    }
}
