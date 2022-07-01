//
//  DayPlanViewController.swift
//  KWK_D3 Final Project
//
//  Created by Nghi Nguyen on 6/30/22.
//

import UIKit

    class DayPlanViewController: UIViewController {

        @IBOutlet weak var DateTxt: UITextField!
        
        let datePicker = UIDatePicker ()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            createDatePicker()
        }

        func createDatePicker () {
            
            DateTxt.textAlignment = .center
            
            //toolbar
            let toolbar = UIToolbar ()
            toolbar.sizeToFit ()
            
            //bar button
            let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
            toolbar.setItems([doneBtn], animated: true)
            
            
            //assign toolbar
            DateTxt.inputAccessoryView = toolbar
            
            //assign date picker to the text field
            DateTxt.inputView = datePicker
            
            //datepicker mode
            datePicker.datePickerMode = .date
            
            datePicker.preferredDatePickerStyle = .wheels
        }
     
        @objc func donePressed () {
            //formatter
            let formatter = DateFormatter ()
            formatter.dateStyle = .medium
            formatter.timeStyle = .none
            
            DateTxt.text = formatter.string(from: datePicker.date)
            
            
            DateTxt.text = "\(datePicker.date)"
            self.view.endEditing(true)
            
        }
        
    }
