//
//  ViewController.swift
//  Wessel-pset2
//
//  Created by Wessel Mel on 19/11/2018.
//

import UIKit

class Starter: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var GettingStarted: UIButton!
    @IBOutlet weak var StoryPicker: UIPickerView!
    
    var pickerData: [String] = [String]()
    var x = String()
    var i = Int()
    var name = "madlib0_simple"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.StoryPicker.delegate = self
        self.StoryPicker.dataSource = self
        pickerData = ["simple", "tarzan", "university", "clothes", "dance"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        x = pickerData[row]
        i = row
        name = "madlib\(i)_\(x)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let wordInputPage = segue.destination as! WordTyper
        let storyPath = Bundle.main.path(forResource: name, ofType: "txt")
        let text2 = try! String(contentsOfFile: storyPath!, encoding: .utf8)

        wordInputPage.text = text2
    }
    
    @IBAction func GetStarted(_ sender: UIButton) {
        performSegue(withIdentifier: "Start", sender: GettingStarted)
    }
    
}

