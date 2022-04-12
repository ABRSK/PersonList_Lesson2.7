//
//  DetailedListViewController.swift
//  PersonList_Lesson2.7
//
//  Created by Андрей Барсук on 11.04.2022.
//

import UIKit

class DetailedListViewController: UITableViewController {
  
  var personList: [Person] = []
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    personList.count
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    2
  }
  
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    personList[section].getFullName
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "DetailedCell", for: indexPath)
    var content = cell.defaultContentConfiguration()
    let person = personList[indexPath.section]
    
    if indexPath.row == 0 {
      content.text = "☎️ \(person.phoneNumber)"
    } else {
      content.text = "📨 \(person.emailAddress)"
    }
    
    cell.contentConfiguration = content
    return cell
  }
  
}
