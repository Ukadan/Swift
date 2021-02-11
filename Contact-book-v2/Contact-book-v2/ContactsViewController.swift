//
//  ContactsViewController.swift
//  Contact-book-v2
//
//  Created by Ali Ukadan on 09.02.2021.
//

import UIKit

class ContactsViewController: UITableViewController
{
    var contacts: [Contact] = []
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
          //  objects.remove(at: indexPath.row)
            contacts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }

  
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
        
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return contacts.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
       // let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: Custo)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as? CustomTableViewCell
        let contact = contacts[indexPath.row]
        
        
        cell?.NameContact.text = contact.name
        cell?.PhoneNumberContact.text = contact.phoneNumber
        cell?.ImageContact.image = contact.image
//        cell?.ContactName.text = contact.name
//        cell?.ContactPhoneNumber.text = contact.phoneNumber
       // cell?.ContactImageView.image = contact.image
        
//        NameLabelforContacts.text = contact.name
//        PhoneNumberLabelForContacts.text = contact.phoneNumber
//
//        cell.textLabel?.text = contact.name
//        cell.detailTextLabel?.text = contact.phoneNumber
//        
        
        return cell!
    }
    
    
    @IBAction func unwindToContactList(seque: UIStoryboardSegue)
    {
        guard let viewController = seque.source as? AddContactViewController else { return }
        
        guard let name = viewController.nameTextField.text, let phoneNumber = viewController.phoneNumberTextField.text, let image = viewController.newImage  else { return }
        
//            let contact = Contact(name: name, phoneNumber: phoneNumber, image: image)
            
      //  let contact = Contact(name: nam, phoneNumber: phoneNumber, UIImage.init(named: image))
        let contact = Contact(name, phoneNumber, UIImage.init(named: image)!)
            contacts.append(contact)
            tableView.reloadData()
        
        
//        else if let viewController = seque.source as? ContactDetailViewController
//        {
//            if viewController.deletedAccount
//            {
//                guard let indexPath: IndexPath = viewController.indexPath else { return }
//                contacts.remove(at: indexPath.row)
//                tableView.reloadData()
//            }
//        }
        
    }
    
//    
//    override func tableView(_ tableView: UITableView,
//               heightForRowAt indexPath: IndexPath) -> CGFloat {
//       // Make the first row larger to accommodate a custom cell.
//      if indexPath.row == 0 {
//          return 140
//       }
//    
       // Use the default size for all other rows.
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "ContactDetailSeque"
        {
            guard let viewController = segue.destination as? ContactDetailViewController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let contact = contacts[indexPath.row]
            viewController.contact = contact
          //  viewController.indexPath = indexPath
         
            
            //viewController.NameTable
            
        }
    }
    
    

}
