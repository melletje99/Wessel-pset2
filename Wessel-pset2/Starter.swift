//
//  ViewController.swift
//  Wessel-pset2
//
//  Created by Wessel Mel on 19/11/2018.
//

import UIKit

class Starter: UIViewController {
    @IBOutlet weak var GettingStarted: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Story.init(withText: "madlib0_simple.txt")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func GetStarted(_ sender: UIButton) {
        performSegue(withIdentifier: "Start", sender: GettingStarted)
    }
    
}

