//
//  Model.swift
//  Test Data
//
//  Created by Bulat Serimbetov on 02.01.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let login: String
    let password: String
    
    
}

struct PersonDataBase {
    static var shared = PersonDataBase()
    private init() {}
    var personArray = [Person(name: "Sergey", surname: "Sergeev", login: "Aleks", password: "12345"),
                       Person(name: "Alexey", surname: "Yakim", login: "Kuba", password: "12345")
    ]
    
    
        
}


