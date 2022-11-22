//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Egor Yakovin on 22.11.2022.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    private var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let tabBar = tabBarController as? EnterTabBarController else { return }
        persons = tabBar.persons
        tableView.rowHeight = 40
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = contact.email
            content.image = UIImage(systemName: "tray")
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
}
