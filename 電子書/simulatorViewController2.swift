//
//  simlualtorViewController.swift
//  電子書
//
//  Created by EA on 2019/4/15.
//  Copyright © 2019 User18. All rights reserved.
//

import UIKit

class simulatorViewController2: UIViewController {


    var receivedInt :Int = 0
    
    @IBOutlet weak var RandomMap: Sharpimage!
    
    @IBOutlet weak var place: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(receivedInt)
          ContinousMatch(number: receivedInt)
    }
 
    
  
    

    @IBAction func ContinousMatch(number:Int) {

        if number == 2
        {
            RandomMap.image = UIImage(named: "skull town")
            place.text = "Skull town"
        }
        else if number == 3
        {
            RandomMap.image = UIImage(named: "the pit")
             place.text = "The pit"
        }
        else if number == 4{
            RandomMap.image = UIImage(named: "relay")
              place.text = "Relay"
        }
        else if number == 5{
            RandomMap.image = UIImage(named: "bridges")
            place.text = "Bridges"
        }
        else if number == 6{
            RandomMap.image = UIImage(named: "artillery")
            place.text = "Artillery"
        }

       
    }

}
