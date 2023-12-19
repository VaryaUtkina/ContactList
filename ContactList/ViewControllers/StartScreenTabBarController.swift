//
//  StartScreenTabBarController.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.12.2023.
//

import UIKit

final class StartScreenTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactViewController else { return }
        guard let sectionVC = viewControllers?.last as? PersonSectionedDetailsVC else { return }
        
        let people = Person.getContactList()
        contactListVC.people = people
        sectionVC.people = people
    }
}
