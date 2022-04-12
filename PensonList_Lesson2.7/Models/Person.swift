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
  
  var getFullName: String { // Getter для получения строки
    "\(firstName) \(lastName)"
  }
  
  static func getPersons() -> [Person] {
    var list: [Person] = []
    
    let firstNames = DataStorage.data.firstNames.shuffled()
    let lastNames = DataStorage.data.lastNames.shuffled()
    let phoneNumbers = DataStorage.data.phoneNumbers.shuffled()
    let emailAddresses = DataStorage.data.emailAddresses.shuffled()
    // .shuffled() Returns the elements of the sequence, shuffled.
    
    for index in 0..<firstNames.count {
      let person = Person(
        firstName: firstNames[index],
        lastName: lastNames[index],
        phoneNumber: phoneNumbers[index],
        emailAddress: emailAddresses[index]
      )
      
      list.append(person)
    }
    
    return list
  }
}
