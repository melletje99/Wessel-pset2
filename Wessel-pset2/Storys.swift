//
//  Story.swift
//  Wessel-pset2
//
//  Created by Wessel Mel on 19/11/2018.
//

import UIKit

class Storys: UIViewController {
    
    @IBOutlet weak var endStory: UILabel!
    var iets = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        endStory.text = iets
        endStory.sizeToFit()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}
