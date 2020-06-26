//
//  ToDoItem.swift
//  To Do
//
//  Created by Mehdi Ijadnazar on 3/28/1399 AP.
//  Copyright © 1399 Mehdi Ijadnazar. All rights reserved.
//

import UIKit
import RealmSwift

class ToDoItem: Object {
    @objc dynamic var id = ""
    @objc dynamic var title = ""
    @objc dynamic var itemDescription = ""
    
    convenience init(_ title: String, _ description: String) {
        self.init()
        self.title = title
        self.itemDescription = description
        self.id = UUID().uuidString
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
