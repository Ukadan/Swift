//
//  Contact.swift
//  Contact-book-v2
//
//  Created by Ali Ukadan on 09.02.2021.
//

import Foundation
import UIKit
//
//struct Contact
//{
//    let name: String
//    let phoneNumber: String
//    let image: UIImage
//}


class Contact
{
    var name: String?
    var phoneNumber: String?
    var image: UIImage?

    init(_ name: String, _ phoneNumber: String, _ image: UIImage)
    {
        self.name = name
        self.phoneNumber = phoneNumber
        self.image = image 
    }

}
