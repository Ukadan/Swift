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
    var indexPAth: Int?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        NameTable.text = contact?.name
        PhoneNumberTable.text = contact?.phoneNumber
        ContactImageForTable.image = contact?.image
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "GoToContacts"
        {
            let MainVC = segue.destination as! ContactsViewController
            MainVC.contacts.remove(at: indexPAth!)
        }
        
        
        if segue.identifier == "editContact" {
            guard let viewController = segue.destination as? AddContactViewController else { return }
            viewController.titleText = "Edit Contact"
            viewController.contact = contact
            viewController.indexPathForContact = self.indexPath!
        }
    }
   

    
    
    @IBOutlet weak var NameTable: UILabel!
    
  
    @IBOutlet weak var PhoneNumberTable: UILabel!
    
    @IBOutlet weak var ContactImageForTable: UIImageView!
    
    

    
    
}
