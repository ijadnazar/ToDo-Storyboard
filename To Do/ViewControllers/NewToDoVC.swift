//
//  NewToDoVC.swift
//  To Do
//
//  Created by Mehdi Ijadnazar on 3/28/1399 AP.
//  Copyright © 1399 Mehdi Ijadnazar. All rights reserved.
//

import UIKit

class NewToDoVC: BaseVC {

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var desdcriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want    to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addButtonTapped(_ sender: Any) {
        guard let title = self.titleLabel.text, let description = self.desdcriptionTextView.text else {
            return
        }
        
        let item = ToDoItem(title, description)
        AppContext.sharedInstance.addNew(item: item)
        self.navigationController?.popViewController(animated: true)
    }
    
}
