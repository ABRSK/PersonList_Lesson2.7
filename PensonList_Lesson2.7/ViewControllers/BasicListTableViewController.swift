//
//  BasicListTableViewController.swift
//  PensonList_Lesson2.7
//
//  Created by Андрей Барсук on 11.04.2022.
//

import UIKit

class BasicListTableViewController: UITableViewController {
  
  var personList: [Person] = []
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    personList.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
    var content = cell.defaultContentConfiguration()
    let person = personList[indexPath.row]
    
    content.text = person.getFullName
    
    cell.contentConfiguration = content
    return cell
  }
  
  // MARK: - Navigation
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let personVC = segue.destination as? PersonViewController else { return }
    guard let indexPath = tableView.indexPathForSelectedRow else { return }
    let person = personList[indexPath.row]
    
    personVC.person = person
    }
}
