//
//  ContentView.swift
//  Hello-Swift5.1
//
//  Created by Guimbo on 13/06/19.
//  Copyright © 2019 Guimbo. All rights reserved.
//

import SwiftUI
//MARK: Internalization of Strings

//before
//in UIKit and AppKit the usage is like that

//let time = 10
//let formatedString = NSLocalizedString{
//    "You have %lld minutes to the end of world",
//    comment: "Time to save the world"
//}
//label.text = String(formated: formatedString, time)

// Now in Swift 5.1 and SwiftUI
//let time = 10
//var international = Text(
//    "You have \(time) minutes to commit your project",
//    comment: "Time to end of World"
//)

struct ContentView : View {
    var body: some View {
        //Text("Hello SwiftUI")
        
        let time = 10
        return Text(
            "You have \(time) minutes to commit your project",
            comment: "Time to end of World"
        )
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
