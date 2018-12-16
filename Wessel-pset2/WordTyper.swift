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
    @IBOutlet weak var done: UILabel!
    
    
    var text = String()
    lazy var tekst: Story! = Story(withText: "\(text)")
    var stor: NSAttributedString?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordType.placeholder = "\(tekst.nextPlaceholder!)"
        RemainingWords.text = "\(tekst.totalPlaceholders) word(s) left"
        worderType.text = "Please type a/an \(tekst.nextPlaceholder!)"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let st = segue.destination as! Storys
        st.iets = stor
    }
    
    @IBAction func Okay(_ sender: UIButton) {
        if wordType.text! == "" {
            done.text = "Fill in a valid word!"
        } else {
            tekst.fillInPlaceholder(word: wordType.text!)
            if tekst.isFilledIn {
                stor = tekst.attributedText
                performSegue(withIdentifier: "Story", sender: OkayButton)
            } else {
                updateScreen()
            }
        }
    }
    
    func updateScreen() {
        wordType.placeholder = "\(tekst.nextPlaceholder!)"
        wordType.text = ""
        RemainingWords.text = "\(tekst.remainingPlaceholders) word(s) left"
        worderType.text = "Please type a/an \(tekst.nextPlaceholder!)"
        done.text = "Well Done!"
    }
    
    
}
