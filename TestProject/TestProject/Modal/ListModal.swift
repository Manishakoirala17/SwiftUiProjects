//
//  ListModal.swift
//  TestProject
//
//  Created by Manisha on 05/07/23.
//

import Foundation

struct ListModal:Hashable{
    var section:String
    var items:[String]
}
extension ListModal{
    static func all() -> [ListModal] {
        return [
            ListModal(section: "Accessiblity", items: ["Offline Components","Siri Shortcuts"]),
            ListModal(section: "Preference", items: ["State Restoration","Security & Privacy"]),
            ListModal(section: "General", items: ["About","Feedback","Rate Us"])
        ]
    }
}

                 
