//
//  ViewController.swift
//  Calculator-final
//
//  Created by Ali on 01.02.2021.
//

import UIKit

class ViewController: UIViewController
{
    
    var numberInScreen : Double = 0;
    var firstNum : Double = 0;
    var operation : Int = 0;
    var mathSign : Bool = false;

    @IBOutlet var result: UILabel!
    
    
    @IBAction func digits(_ sender: UIButton)
    {
        if mathSign == true
        {
            result.text = String(sender.tag)
            mathSign = false
        }
        
        else{
            result.text = result.text! + String(sender.tag)
        }
  
        numberInScreen = Double(result.text!)!
    }
    
    
    @IBAction func Buttons(_ sender: UIButton)
    {
        if result.text != ""  && sender.tag != 10 && sender.tag != 17
        {
            firstNum = Double(result.text!)!
            
            if sender.tag == 13 //division
            {
                result.text = String(sender.tag);
            }
            
            else if sender.tag == 14 //multiplication
            {
                result.text = "X";
            }
            
            else if sender.tag == 15 //minus
            {
                result.text = "-";
            }
            
            else if sender.tag == 16 // plus
            {
                result.text = "+";
            }
            
            operation = sender.tag
            mathSign = true;
            
            
        }
        
        else if sender.tag == 17 //equal
        {
            if operation == 13
            {
                result.text = String(firstNum / numberInScreen)
            }

            else if operation == 14
            {
                result.text = String(firstNum * numberInScreen)
            }

            else if operation == 15
            {
                result.text = String(firstNum - numberInScreen)
            }

            else if operation == 16
            {
                result.text = String(firstNum + numberInScreen)
            }
        }


        else if sender.tag == 10
        {
            result.text = ""
            firstNum = 0
            numberInScreen = 0
            operation = 0
        }
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

