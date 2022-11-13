//
//  orderViewController.swift
//  starbuckOrderMock
//
//  Created by Jaeho Jung on 2022/11/13.
//

import UIKit

class orderViewController: UIViewController {
    
    let menu = [["토피 넛 라떼", "Toffee Nut Latter", "6,100원", "스타벅스의 겨울 시그니처 음료"], ["아이스 토피 넛 라떼", "Iced Toffee Nut Latter", "6,100원", "스타벅스의 겨울 시그니처 음료"], ["오로라 캐모마일 릴렉서", "Aurora Chamomile Tea Relaxer", "6,100원", "크리스마스 밤을 아름답게 물들이는 듯한 오로라가 살포시 내려앉아"], ["아이스 오로라 캐모마일 릴렉서", "Iced Aurora Chamomile Tea Relaxer", "6,100원", "크리스마스 밤을 아름답게 물들이는 듯한 오로라가 살포시 내려앉아"]]

    @IBOutlet weak var menuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cellNib = UINib(nibName: "menuTableViewCell", bundle: nil)
        menuTableView.register(cellNib, forCellReuseIdentifier: "myCell")

    }
}

extension orderViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let menuDetailVC = storyboard?.instantiateViewController(withIdentifier: "menuDetailViewController") as! menuDetailViewController
        
        menuDetailVC.data = menu[indexPath.row]
        
        navigationController?.pushViewController(menuDetailVC, animated: true)
    }
    
}

extension orderViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! menuTableViewCell
        
        cell.drinkTypeKorean.text = "\(menu[indexPath.row][0])"
        cell.drinkTypeEnglish.text = "\(menu[indexPath.row][1])"
        cell.drinkPrice.text = "\(menu[indexPath.row][2])"
        return cell
    }
    
}
