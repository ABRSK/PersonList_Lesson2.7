//
//  TabBarViewController.swift
//  PensonList_Lesson2.7
//
//  Created by Андрей Барсук on 11.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    guard let basicListVC = viewControllers?.first as? BasicListTableViewController else { return }
    guard let detailedListVC = viewControllers?.last as? DetailedListViewController else { return }
    let personList = Person.getPersons() // Общий массив, иначе разные данные
    
    basicListVC.personList = personList
    detailedListVC.personList = personList
  }
}
