//
//  AppContext.swift
//  To Do
//
//  Created by Mehdi Ijadnazar on 3/28/1399 AP.
//  Copyright © 1399 Mehdi Ijadnazar. All rights reserved.
//

import UIKit
import RealmSwift

class AppContext: NSObject {
    public static var sharedInstance = AppContext()
    private var items: Results<ToDoItem>!
    private var resultItems: Results<ToDoItem>!
    
    private override init() {
        let realm = try! Realm()
        
        self.items = realm.objects(ToDoItem.self)
        super.init()
    }
    
    public func addNew(item: ToDoItem) {
//        self.items.append(item)
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(item)
        }
        }
    
    public func savedItems() -> Results<ToDoItem>! {
        return self.items
    }
}
