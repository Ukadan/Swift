//
//  ContactDetailViewController.swift
//  Contact-book-v2
//
//  Created by Ali Ukadan on 09.02.2021.
//

import UIKit

class ContactDetailViewController: UIViewController
{
    
    var contact: Contact? = nil
    var contactDeleted: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameTable.text = contact?.name
        PhoneNumberTable.text = contact?.phoneNumber
        ContactImageForTable.image = contact?.image
        // Do any additional setup after loading the view.
    }
    
    
   
//    
//    @IBAction func ContactDeleteDetail(_ sender: UIButton)
//    {
//        contactDeleted = true
//        performSegue(withIdentifier: "unwindToContactList", sender: self)
//    }
//    
    
    
    @IBOutlet weak var NameTable: UILabel!
    
  
    @IBOutlet weak var PhoneNumberTable: UILabel!
    
    @IBOutlet weak var ContactImageForTable: UIImageView!
}
