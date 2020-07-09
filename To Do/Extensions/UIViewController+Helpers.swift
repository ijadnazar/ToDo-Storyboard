//
//  UIViewController+Helpers.swift
//  To Do
//
//  Created by Mehdi Ijadnazar on 4/19/1399 AP.
//  Copyright © 1399 Mehdi Ijadnazar. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
