//
//  ContactsViewController.swift
//  Contact-book-v2
//
//  Created by Ali Ukadan on 09.02.2021.
//

import UIKit



class ContactsViewController: UITableViewController
{
    var contacts: [Contact] = [Contact("ref", "referferf", UIImage(named: "male")!)]
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            contacts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as? CustomTableViewCell
        let contact = contacts[indexPath.row]
        cell?.NameContact.text = contact.name
        cell?.PhoneNumberContact.text = contact.phoneNumber
        cell?.ImageContact.image = contact.image
        return cell!
    }
    
    
    @IBAction func unwindToContactList(seque: UIStoryboardSegue)
    {
        if let viewController = seque.source as? AddContactViewController
        {
            guard let name = viewController.nameTextField.text, let phoneNumber = viewController.phoneNumberTextField.text, let image = viewController.newImage  else { return }
        
            let contact = Contact(name, phoneNumber, UIImage.init(named: image)!)
            contacts.append(contact)
            tableView.reloadData()
        
        }

         
    }
    
    
    

 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "ContactDetailSeque"
        {
            let viewController = segue.destination as? ContactDetailViewController
            let person = contacts[tableView.indexPathForSelectedRow!.row]
            viewController?.contact = person
            viewController?.indexPAth = tableView.indexPathForSelectedRow!.row
            
        }
    }
    
    
    @IBAction func unwindToPage(_ unwindSegue: UIStoryboardSegue)
    {
        tableView.reloadData()
    }

}
