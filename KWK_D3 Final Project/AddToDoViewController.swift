//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Mia Lee on 6/28/22.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTable2TableViewController()

    
 //   @IBOutlet weak var titleTextField: UITextField!
 //   @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
    
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
    
    }
    /* @IBAction func addTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
    
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
    
     }*/
}
