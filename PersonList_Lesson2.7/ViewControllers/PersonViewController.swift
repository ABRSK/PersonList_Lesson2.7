//
//  PersonViewController.swift
//  PersonList_Lesson2.7
//
//  Created by Андрей Барсук on 11.04.2022.
//

import UIKit

class PersonViewController: UIViewController {
  
  @IBOutlet var personPhoneLabel: UILabel!
  @IBOutlet var personEmailLabel: UILabel!
  
  var person: Person!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = person.getFullName
    personPhoneLabel.text = "☎️ Phone: \(person.phoneNumber)"
    personEmailLabel.text = "📨 Email: \(person.emailAddress)"
  }
}


