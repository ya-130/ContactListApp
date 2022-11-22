//
//  ContactInfoViewController.swift
//  ContactListApp
//
//  Created by Egor Yakovin on 22.11.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email 
    }
}
