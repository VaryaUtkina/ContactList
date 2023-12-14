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
    
    static func getPerson() -> [Person] {
        var people: [Person] = []
        while people.count < 10 {
            let currentPerson = Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? "",
                email: emails.randomElement() ?? ""
            )
            if !people.contains(where: { $0.name == currentPerson.name }),
               !people.contains(where: { $0.surname == currentPerson.surname }),
               !people.contains(where: { $0.phoneNumber == currentPerson.phoneNumber }),
               !people.contains(where: { $0.email == currentPerson.email }) {
               people.append(currentPerson)
            }
        }
        return people
    }
}
