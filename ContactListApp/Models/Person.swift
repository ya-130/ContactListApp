//
//  Person.swift
//  ContactListApp
//
//  Created by Egor Yakovin on 21.11.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        while namesArray.isEmpty == false {
            persons.append(Person(name: namesArray.remove(at: Int.random(in: 0...(namesArray.count - 1))),
                                  surname: surnameArray.remove(at: Int.random(in: 0...(surnameArray.count - 1))),
                                  phoneNumber: phoneNumbersArray.remove(at: Int.random(in: 0...(phoneNumbersArray.count - 1))),
                                  email: emailsArray.remove(at: Int.random(in: 0...(emailsArray.count - 1)))))
        }
        return persons
    }
}
