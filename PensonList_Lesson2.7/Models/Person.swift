//
//  Person.swift
//  PensonList_Lesson2.7
//
//  Created by Андрей Барсук on 11.04.2022.
//

struct Person {
  let firstName: String
  let lastName: String
  let phoneNumber: String
  let emailAddress: String
  
  var fullName: String {
    "\(firstName) \(lastName)"
  }
}
