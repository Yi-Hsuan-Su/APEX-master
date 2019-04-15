//
//  SimulatorViewController.swift
//  電子書
//
//  Created by EA on 2019/4/13.
//  Copyright © 2019 User18. All rights reserved.
//

import UIKit

class SimulatorViewController: UIViewController ,UITextFieldDelegate{

    

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBOutlet weak var surlabel: UILabel!
    @IBAction func myslideraction(_ sender: UISlider) {
         sender.setValue(sender.value.rounded(), animated: true)
         surlabel.text = Int(sender.value).description
    }
    

    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Send" {
            
            let secondVC = segue.destination as! simulatorViewController2
             var number = Int.random(in: 2...6)
            secondVC.receivedInt = number
        }
    }

}
