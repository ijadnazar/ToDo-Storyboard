//
//  NewToDoVC.swift
//  To Do
//
//  Created by Mehdi Ijadnazar on 3/28/1399 AP.
//  Copyright © 1399 Mehdi Ijadnazar. All rights reserved.
//

import UIKit

class NewToDoVC: BaseVC {

    @IBOutlet weak var titleTF: UITextField!
    @IBOutlet weak var desdcriptionTextView: UITextView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowHandler(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowHandler(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        guard let title = self.titleTF.text, let description = self.desdcriptionTextView.text else {
            return
        }
        
        let item = ToDoItem(title, description)
        AppContext.sharedInstance.addNew(item: item)
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension NewToDoVC {
    @objc func keyboardWillShowHandler(_ notificatioin: Notification) {
        guard let userInfo = notificatioin.userInfo else {
            return
        }
        
        let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let isShowing = notificatioin.name == UIResponder.keyboardWillShowNotification ? true : false
        let adjusmentHeight = (keyboardFrame.height + 20) * (isShowing ? 1 : -1)
        
        scrollView.contentInset.bottom += adjusmentHeight
    }
}
