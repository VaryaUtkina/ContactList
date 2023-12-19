//
//  Person.swift
//  ContactList
//
//  Created by Варвара Уткина on 14.12.2023.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var people: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let currentPerson = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
               people.append(currentPerson)
            }
        return people
    }
}
