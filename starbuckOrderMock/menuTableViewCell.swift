//
//  menuTableViewCell.swift
//  starbuckOrderMock
//
//  Created by Jaeho Jung on 2022/11/13.
//

import UIKit

class menuTableViewCell: UITableViewCell {

    
    @IBOutlet weak var drinkTypeImage: UIImageView!
    @IBOutlet weak var drinkTypeKorean: UILabel!
    @IBOutlet weak var drinkTypeEnglish: UILabel!
    @IBOutlet weak var drinkPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
