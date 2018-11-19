//
//  WordType.swift
//  Wessel-pset2
//
//  Created by Wessel Mel on 19/11/2018.
//

import UIKit

class WordTyper: UIViewController {
    @IBOutlet weak var RemainingWords: UILabel!
    @IBOutlet weak var wordType: UITextField!
    @IBOutlet weak var worderType: UILabel!
    @IBOutlet weak var OkayButton: UIButton!
    
    
    
    var tekst = Story.init(withText: "I wannabe a <job> when I grow up. Just like my dad. Life is <adjective> like that!")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordType.placeholder = "\(tekst.nextPlaceholder!)"
        RemainingWords.text = "\(tekst.totalPlaceholders) word(s) left"
        worderType.text = "Please type a/an \(tekst.nextPlaceholder!)"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func Okay(_ sender: UIButton) {
        tekst.fillInPlaceholder(word: wordType.text!)
        if tekst.isFilledIn {
            performSegue(withIdentifier: "Story", sender: OkayButton)
        } else {
            updateScreen()
        }
    }
    
    func updateScreen() {
        wordType.placeholder = "\(tekst.nextPlaceholder!)"
        RemainingWords.text = "\(tekst.remainingPlaceholders) word(s) left"
        worderType.text = "Please type a/an \(tekst.nextPlaceholder!)"
    }
    
    
}
