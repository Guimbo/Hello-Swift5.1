//
//  ModelTest.swift
//  Hello-Swift5.1
//
//  Created by Guimbo on 13/06/19.
//  Copyright © 2019 Guimbo. All rights reserved.
//

import Foundation

// MARK: Implicit return from single expression: More simplicity syntax in expressions

// Before
struct Rectangle {
    var width = 0.0, height = 0.0
    var area : Double {
        return width * height
    }
}
// Now in Swift 5.1
struct Rectangle2 {
    var width = 0.0, height = 0.0
    var area : Double {width * height}
}

//MARK: Synthesized default values for memberwise initializer

//before
struct Dog {
    var name = "Dog Name "
    var age = 0
}
//When it was initialized it could choose to pass the arguments or not...
let myFriend = Dog() // that works
let myNewFriend = Dog(name: "Nascimento", age: 5) // thats works
// But if I'm tried pass just one argument before ...
let MyBudy = Dog(name: "Fulano", age: 3) // thats not works

// Now in Swift 5.1
let MyBestBudy = Dog(name: "Sicrano", age: 3) // thats works


//MARK: Property Wrappers(that part was returned to review at the date of this commit)
//
////Before in UserDefaults
//var userTouchIDbefore: Bool {
//    get{
//        return UserDefaults.standard.bool(forKey: "USER_TOUCH_ID")
//    }
//    set{
//        UserDefaults.standard.set(newValue, forKey: "USER_TOUCH_ID")
//    }
//}
//
//var isLoggedINbefore: Bool{
//    get{
//        return UserDefaults.standard.bool(forKey: "LOGGED_IN")
//    }
//    set{
//        UserDefaults.standard.set(newValue, forKey: "LOGGED_IN")
//    }
//}
//
//// Now in Swift 5.1 we can reuse the code of that form...
////create a access pattern
//@propertyWrapper
//struct UserDefaut<T> {
//    let key: String
//    let defaultValue: T
//    init(_key: String, defaultValue: T) {
//        UserDefaults.standard.register(defaults: [key: defaultValue])
//    }
//    var value: T {
//        get{
//            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
//        }
//        set{
//            UserDefaults.standard.set(newValue, forKey: key)
//        }
//    }
//}
//
////Using the UserDefault property wrapper to declare and acess properties
//@UserDefault("USER_TOUCH_ID", defaultValue: false)
//var userTouchID: Bool
//@UserDefault("LOGGED_IN", defaultValue: false)
//var isLoggedIn: Bool
//
//if !isLoggedIn && userTouchID {
//    //!authenticateWithTouchID()
//}
//else if isLoggedIn && !userTouchID{
//    //!authenticateWithLoggedIn()
//}

//MARK: Add auto doc in functions select func with command
/// Print concatened values
/// - Parameter value: Int
/// - Parameter mensage: String
func printValue(value: Int, mensage: String){
    print("\(mensage) + \(value)")
}


