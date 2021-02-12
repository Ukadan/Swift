//
//  CustomTableViewCell.swift
//  Contact-book-v2
//
//  Created by Ali Ukadan on 09.02.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
//    @IBOutlet weak var ContactImage: UIImageView!
    
    @IBOutlet weak var NameContact: UILabel!
    
    @IBOutlet weak var PhoneNumberContact: UILabel!
    
    @IBOutlet weak var ImageContact: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    


}
