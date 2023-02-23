//
//  SecondViewController.swift
//  bonus
//
//  Created by Brandon  Miller on 2/23/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var detail = ""

    @IBOutlet weak var information: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        information.text = detail
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
