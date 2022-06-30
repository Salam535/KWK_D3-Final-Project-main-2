//
//  CompleteToDoViewController.swift
//  ToDoListApp
//
//  Created by Mia Lee on 6/29/22.
//

//import UIKit

//class CompleteToDoViewController: UIViewController {
    
//    var previousVC = ToDoTableViewController()
//    var selectedToDo = ToDoCD?.self
    
//    @IBAction func completeTapped(_ sender: Any) {
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
//            return
//        }
        
 //       if let theToDo = selectedToDo {
//          context.delete(theToDo)
  //          navigationController?.popViewController(animated: true)
   //     }
            
  //  }
  
   // @IBOutlet weak var titleLabel: UILabel!

   // override func viewDidLoad() {
   //     super.viewDidLoad()

        // titleLabel.text = selectedToDo.name
        // if it is a CD object, grab the name off of it
//    }
    
import UIKit

class CompleteToDoViewController: UIViewController {
    var previousVC = ToDoTable2TableViewController()
    var selectedToDo : ToDoCD?

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo?.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
          return
    }
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theToDo = selectedToDo {
              context.delete(theToDo)
              navigationController?.popViewController(animated: true)
            }
          }
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

// }
