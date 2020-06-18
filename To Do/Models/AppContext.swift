//
//  AppContext.swift
//  To Do
//
//  Created by Mehdi Ijadnazar on 3/28/1399 AP.
//  Copyright © 1399 Mehdi Ijadnazar. All rights reserved.
//

import UIKit

class AppContext: NSObject {
    public static var sharedInstance = AppContext()
    private var items: [ToDoItem]
    
    private override init() {
        self.items = []
        super.init()
    }
    
    public func addNew(item: ToDoItem) {
        self.items.append(item)
    }
    
    public func savedItems() -> [ToDoItem] {
        return self.items
    }
}
