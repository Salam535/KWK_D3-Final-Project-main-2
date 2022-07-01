//
//  QuotesViewController.swift
//  KWK_D3 Final Project
//
//  Created by victoria tran on 6/30/22.
//

import UIKit

class QuotesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        text.text = quotes[ran]
    }
    
    @IBOutlet weak var text: UILabel!
    
    var quotes = ["\"Don’t let yesterday take up too much of today. - Will Rogers\"", "\"You learn more from failure than from success. Don’t let it stop you. Failure builds character.\" — Unknown", "\"Experience is a hard teacher because she gives the test first, the lesson afterwards.\" ―Vernon Sanders Law", "\"Either you run the day or the day runs you.\" — Jim Rohn", "\"Take the attitude of a student, never be too big to ask questions, never know too much to learn something new.\" —Augustine Og Mandino", "\"People say nothing is impossible, but I do nothing every day.\" — Winnie the Pooh", "\"Don't let someone else's opinion of you become your reality\" — Les Brown", "\"I’d rather regret the things I’ve done than regret the things I haven’t done.\" —Lucille Ball", "\"Life is like riding a bicycle. To keep your balance you must keep moving.\" —Albert Einstein", "\"I do not try to dance better than anyone else. I only try to dance better than myself.\" —Arianna Huffington"]
    
    var ran = Int.random(in:0..<10)
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
