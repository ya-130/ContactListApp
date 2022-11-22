//
//  DataManager.swift
//  ContactListApp
//
//  Created by Egor Yakovin on 21.11.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let namesArray = ["Alex", "Stan", "Sam",
                      "Jacob", "Ali", "Egor",
                      "Sergey", "John", "Ignat"]
    let surnameArray = ["Smith", "Douglas", "Ivanov",
                        "Jonson", "Shepard", "Antonov",
                        "Akulov", "Lazarev", "Porsche"]
    let emailsArray = ["aaa@mail.com", "kkk@mail.com", "ooo@mail.com",
                       "ppp@mail.com", "vvv@mail.com", "www@mail.com",
                       "ttt@mail.com", "yyy@mail.com", "pad@mail.com"]
    let phoneNumbersArray = ["9999999999", "1111111111", "2222222222",
                             "3333333333", "5555555555", "8888888888",
                             "7777777777", "9876543210", "0123456789"]
    
    private init() {}    
}
