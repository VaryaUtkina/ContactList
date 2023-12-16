//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.12.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        title = person.fullName
    }
}
