//
//  PersonSectionedDetailsVC.swift
//  ContactList
//
//  Created by Варвара Уткина on 16.12.2023.
//

import UIKit

final class PersonSectionedDetailsVC: UITableViewController {
    var people: [Person]!
    
// MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        people.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        people[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionedCell", for: indexPath)
        
        let person = people[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
