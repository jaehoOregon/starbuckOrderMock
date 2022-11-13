//
//  ViewController.swift
//  starbuckOrderMock
//
//  Created by Jaeho Jung on 2022/11/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    
    var menuDrink: UIView!
    var menuFood: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        menuDrink = menuViewDrink().view
//        viewContainer.addSubview(menuDrink)

        menuFood = menuViewFood().view
        viewContainer.addSubview(menuFood)
        menuDrink = menuViewTest().view
        viewContainer.addSubview(menuDrink)
    }

// MARK: segmentControlActionL
    @IBAction func switchView(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            viewContainer.bringSubviewToFront(menuDrink)
        case 1:
            viewContainer.bringSubviewToFront(menuFood)
        default:
            break
        }
        
    }
}

