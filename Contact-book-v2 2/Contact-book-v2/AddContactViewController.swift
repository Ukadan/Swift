//
//  AddContactViewController.swift
//  Contact-book-v2
//
//  Created by Ali Ukadan on 09.02.2021.
//

import UIKit

class AddContactViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var PickerView: UIPickerView!
    
    var newImage: String? = "male"
    
    let gender = ["male", "female"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return gender[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        newImage = gender[row]
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PickerView.dataSource = self
        PickerView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveContact(_ sender: UIButton)
    {
       // performSegue(withIdentifier: "unwindToContactList", sender: self)
        performSegue(withIdentifier: "unwindToContactList", sender: self)
    }
    

}

//extension AddContactViewController: UIPickerViewDataSource, UIPickerViewDelegate
//{
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return gender.count
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
//    {
//        return gender[row]
//    }
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
//    {
//        let newImage = gender[row]
//    }
//
//}

